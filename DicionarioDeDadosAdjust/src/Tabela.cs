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

        public string pkColumns()
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

        public string getTableCreateSQL()
        {
            string sql = string.Empty;
            sql = $"DROP TABLE IF EXISTS public.{name} CASCADE;\n\n"; //Drop na table, caso ela já exista.
            sql += $"CREATE TABLE public.{name} (\n"; //Cria a tabela.
            //Cria as colunas, o loop percorre todas listadas na ATUAL tabela.
            sql += getColumnsCreateSQL();

            sql += $"\n);"; //Finaliza o create table.

            sql += $"\n\nALTER TABLE public.{tabela.name} OWNER TO {tableOwner};"; //Garante que tabela será vinculada a DB postgres.

            sql += $"\n\nCOMMENT ON TABLE public.{tabela.name} IS '{tabela.comment}';"; //Gera o comentário da atual tabela (COMENTÁRIO DA TABELA).

            return sql;
        }

        public string getColumnsCreateSQL()
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
                if (col != tabela.columns.Last())
                    sql += ",";
                sql += "\n";
            }
            return sql;
        }

        public string getColumnsCommentSQL()
        {
            string sql = string.Empty;
            //Loop para gerar os comentários, de cada tabela.
            foreach (var col in tabela.columns)
            {
                if (!string.IsNullOrEmpty(col.comment)) //Validação para verificar se a variável do comentário da tabela não é nulo ou está vazio.
                {
                    sql +=
                        $"\n\nCOMMENT ON COLUMN public.{tabela.name}.{col.name} IS '{col.comment}';";
                }
            }
            return sql;
        }

        public string getForeignKeysSQL() { }
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
