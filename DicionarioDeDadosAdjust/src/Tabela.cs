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
					if (col != columns.Last()) sql += ",";

					sql += "\n";
				}
				return sql;
			}
		}
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
						sql += $"\n\nCOMMENT ON COLUMN public.{name}.{col.name} IS '{col.comment}';";
					}
				}
				return sql;
			}
		}

		public string getPrimaryKeySQL
		{
			get
			{
				string sql = string.Empty;
				if (pkColumns != "")
					sql += $"\n\nALTER TABLE IF EXISTS public.{name} ADD CONSTRAINT {name}_pkey PRIMARY KEY ({pkColumns.Trim().TrimEnd(',')});";
				return sql;
			}
		}

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
					sql += $"\n\nALTER TABLE IF EXISTS public.{name} ADD CONSTRAINT {name}uk UNIQUE ({uk.TrimEnd(',', ' ')});";
				}
				return sql;
			}
		}

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
