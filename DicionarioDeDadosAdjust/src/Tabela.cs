using System.Reflection.Emit;

namespace DicionarioDeDadosAdjust
{
    //Objeto tabela, onde irá conter os dados da tabela e os seus dados de Colunas e FKs com seus respectivos dados.
    public class Tabela
    {
        public List<Column> columns { get; set; } = new List<Column>();
        public List<ForeignKey> foreignKeys { get; set; } = new List<ForeignKey>();

        public string comment { get; set; } = new string(string.Empty);
        public string name { get; set; } = new string(string.Empty);
        public string tableOwner { get; set; } = new string("postgres");

        //
        //Gera o código SQL para criação da tabela.
        //
        public string getTableCreateSQL
        {
            get
            {
                string sql = string.Empty;
                sql = $"DROP TABLE IF EXISTS public.{name} CASCADE;\n\n"; //Drop na table, caso ela já exista.
                sql += $"CREATE TABLE public.{name} (\n"; //Cria a tabela.
                //Cria as colunas, o loop percorre todas listadas na ATUAL tabela.
                sql += getColumnsCreateSQL;

                sql += $"\n);"; //Finaliza o create table.

                sql += $"\n\nALTER TABLE public.{name} OWNER TO {tableOwner};"; //Garante que tabela será vinculada a DB postgres.

                sql += $"\n\nCOMMENT ON TABLE public.{name} IS '{comment}';"; //Gera o comentário da atual tabela (COMENTÁRIO DA TABELA).

                return sql;
            }
        }

        //
        //Gera o código SQL para criar as colunas pertencentes a tabela.
        //
        private string getColumnsCreateSQL
        {
            get
            {
                string sql = string.Empty;
                foreach (var col in columns)
                {
                    //Preenche os dados da tabela, verifica se é not null, etc.
                    sql += $"{col.name} {col.dataType}";
                    if (!string.IsNullOrEmpty(col.size) && col.size != "0")
                    {
                        if (col.size != "NI")
                            sql += $"({col.size})";
                    }
                    if (col.required.ToLower() == "sim")
                    {
                        sql += " NOT NULL";
                    }
                    else
                    {
                        sql += "";
                    }
                    if (col != columns.Last())
                    {
                        sql += ",";
                        sql += "\n";
                    }
                }
                return sql;
            }
        }

        //
        //Gera o código SQL para inserção dos comentários das colunas desta tabela.
        //*As colunas devem estar previamento criadas
        //
        public string getColumnsCommentSQL
        {
            get
            {
                string sql = string.Empty;
                //Loop para gerar os comentários, de cada tabela.
                foreach (var col in columns)
                {
                    if (!string.IsNullOrEmpty(col.comment)) //Validação para verificar se a variável do comentário da tabela não é nulo ou está vazio.
                    {
                        sql +=
                            $"\n\nCOMMENT ON COLUMN public.{name}.{col.name} IS '{col.comment}';";
                    }
                }
                return sql;
            }
        }

        //
        //Gera o código SQL para criação das Primary Keys presentes na tabela.
        //
        public string getPrimaryKeySQL
        {
            get
            {
                string sql = string.Empty;
                if (pkColumns != "")
                    sql +=
                        $"\n\nALTER TABLE IF EXISTS public.{name} ADD CONSTRAINT {name}_pkey PRIMARY KEY ({pkColumns.Trim().TrimEnd(',')});";
                return sql;
            }
        }

        //
        //Gera o código SQL para criação das Foreign Keys presentes na tabela.
        //
        public string getForeignKeysSQL
        {
            get
            {
                string sql = string.Empty;
                foreach (var fk in foreignKeys)
                {
                    sql +=
                        $"\n\nALTER TABLE IF EXISTS public.{name} ADD CONSTRAINT {fk.name} FOREIGN KEY ({fk.campo}) REFERENCES public.{fk.referenceTable}({fk.campoReference}) {fk.type} ON UPDATE {fk.onUpdate} ON DELETE {fk.onDelete} {fk.deferrable} {fk.deferrade} NOT VALID;";
                }

                return sql;
            }
        }

        //
        //Obtem as colunas que são Primary Key
        //
        public string pkColumns
        {
            get
            {
                string cols = string.Empty;
                foreach (Column c in columns)
                {
                    if (c.name.StartsWith("pk"))
                    {
                        cols += c.name + ", ";
                    }
                }
                return cols;
            }
        }

        //
        //Gera o SQL para criação das UniqueKey presentes na tabela.
        //
        public string getUniqueKeySQL
        {
            get
            {
                string uk = string.Empty;
                string sql = string.Empty;

                foreach (var col in columns)
                {
                    if (col.name.StartsWith("uk"))
                    {
                        uk += $"{col.name}, ";
                    }
                }

                if (uk != "")
                {
                    sql +=
                        $"\n\nALTER TABLE IF EXISTS public.{name} ADD CONSTRAINT {name}uk UNIQUE ({uk.TrimEnd(',', ' ')});";
                }
                return sql;
            }
        }

		//
		//Deprecated code. Inicialmente iria se utilizar disso para criar as FKs, mas verificou-se que poderia haver divergências
		//com a tabela disponibilizada propriamente das FKs.
		//Não está sendo mais utilizado na execução do código, diante disso, este trecho do código pode nem funcionar mais.
		//Trecho de código será mantido para eventualmente em um futuro, utilzar-se dele.		
		//
		#region Old CODE, to generate FKs from column names
		/*
		public string getFKSQLByColumnName
		{
			get
			{
				string sql = "";
				int count = 1;
				foreach (var col in columns)
				{
					if (col.name.Contains("fk"))
					{
						foreach (var tabela2 in tabelas)
						{
							if (tabela2.name == name)
								continue;
							foreach (var col2 in tabela2.columns)
							{
								if (
									(
										col.name.Substring(1) == col2.name.Substring(1)
										&& col2.name.Contains("pk")
										&& !col2.name.Contains("fk")
									)
									|| (
										col.name.Substring(3) == col2.name.Substring(1)
										&& col2.name.Contains("pk")
										&& !col2.name.Contains("fk")
									)
								)
								{
									List<string> pkCols = new List<string>();
									List<string> fkCols = new List<string>();
									foreach (var col3 in tabela2.columns)
									{
										if (col3.name.Contains("pk"))
										{
											pkCols.Add(col3.name);

											foreach (var col4 in columns)
											{
												if (
													col4.name.Contains("fk")
													&& (
														col4.name.Contains(col3.name.Substring(1))
														|| col4.name.Contains(
															col3.name.Substring(3)
														)
													)
												)
												{
													fkCols.Add(col4.name);
												}
											}
										}
									}

									if (pkCols.Count > 1)
									{
										sql +=
											$"\n\nALTER TABLE ONLY public.{name} ADD CONSTRAINT {name}fk{count} FOREIGN KEY ({string.Join(", ", fkCols)}) REFERENCES public.{tabela2.name}({string.Join(", ", pkCols)}) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE;";
										count++;
										break;
									}

									sql +=
										$"\n\nALTER TABLE ONLY public.{name} ADD CONSTRAINT {name}fk{count} FOREIGN KEY ({col.name}) REFERENCES public.{tabela2.name}({col2.name}) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE;";
									count++;
									break;
								}
							}
						}
					}
				}

				return sql;
			}
		}
		*/
        #endregion

        //Objeto coluna para criar e armazenar os dados de uma coluna
        public class Column
        {
            public int pos { get; set; }
            public string name { get; set; } = new string(string.Empty);
            public string comment { get; set; } = new string(string.Empty);
            public string dataType { get; set; } = new string(string.Empty);
            public string size { get; set; } = new string(string.Empty);
            public string required { get; set; } = new string(string.Empty);
        }

        //Objeto ForeignKey (FK) para criar e armazenar os dados de uma ForeignKey
        public class ForeignKey
        {
            public string name { get; set; } = new string(string.Empty);
            public string campo { get; set; } = new string(string.Empty);
            public string deferrable { get; set; } = new string(string.Empty);
            public string deferrade { get; set; } = new string(string.Empty);
            public string type { get; set; } = new string(string.Empty);
            public string onUpdate { get; set; } = new string(string.Empty);
            public string onDelete { get; set; } = new string(string.Empty);
            public string referenceTable { get; set; } = new string(string.Empty);
            public string campoReference { get; set; } = new string(string.Empty);
        }
    }
}
