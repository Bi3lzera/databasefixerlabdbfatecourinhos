namespace DicionarioDeDadosAdjust
{
    //Objeto tabela, onde irá conter os dados da tabela e os seus dados de Colunas e FKs com seus respectivos dados.
    public class Tabela
    {
        public List<Column> columns { get; set; } = new List<Column>();
        public List<ForeignKey> foreignKeys { get; set; } = new List<ForeignKey>();

        public string comment { get; set; } = new string(string.Empty);
        public string name { get; set; } = new string(string.Empty);

        public string pkColumns()
        {
            string cols = "";
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
        public string deferable { get; set; } = new string(string.Empty);
        public string deferade { get; set; } = new string(string.Empty);
        public string type { get; set; } = new string(string.Empty);
        public string onUpdate { get; set; } = new string(string.Empty);
        public string onDelete { get; set; } = new string(string.Empty);
        public string referenceTable { get; set; } = new string(string.Empty);
        public string campoReference { get; set; } = new string(string.Empty);
    }
}
