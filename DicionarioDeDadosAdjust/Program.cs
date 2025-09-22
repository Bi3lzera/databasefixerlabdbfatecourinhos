using System.IO;
using System.Runtime.CompilerServices;

namespace DicionarioDeDadosAdjust
{
    public class App
    {
        public static void Main()
        {
            List<Tabela> tabelas = new List<Tabela>();

            while (true)
            {
                tabelas.Add(GetTable());
                if (Console.ReadLine().Split("	")[0] == "4321")
                    break;
            }

            tabelas = LoadFKTable(tabelas);
            Console.WriteLine(tabelas[0].foreignKeys.Count);
            Console.WriteLine(tabelas[0].foreignKeys[0].name);

            GenerateSQL(tabelas);
        }

        public static Tabela GetTable()
        {
            Tabela t = new Tabela();

            Console.WriteLine("Cole o cabeçalho da tabela:");
            string cabecalho = Console.ReadLine();
            string[] fCabecalho = cabecalho.Split("	", 2);
            while (true)
            {
                Console.WriteLine("Cole os dados da tabela:");
                string input = Console.ReadLine();
                if (input.Split("	")[0] == "")
                    break;

                string[] fInput = input.Split("	");
                Column tColumn = new Column();

                try
                {
                    tColumn.pos = Convert.ToInt32(fInput[0]);
                    tColumn.name = fInput[1];
                    tColumn.dataType = fInput[2];
                    tColumn.size = fInput[3];
                    tColumn.required = fInput[4];
                    tColumn.comment = fInput[5];
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
                finally
                {
                    if (tColumn.pos != 0 && tColumn.name != null)
                        t.columns.Add(tColumn);
                }
            }

            t.name = fCabecalho[0].Split(" ")[1];
            t.comment = fCabecalho[1].Substring(13);

            return t;
        }

        public static List<Tabela> LoadFKTable(List<Tabela> tabelas)
        {
            Console.WriteLine("Cole a tabela de FKs:");
            string actualTable = "";
            while (true)
            {
                string input = Console.ReadLine();
                if (input == "")
                    break;

                if (input == null || input.Split("	")[0] == "")
                    break;

                string[] fInput = input.Split("	");

                ForeignKey fk = new ForeignKey();

                try
                {
                    if (fInput[0].Split(' ')[0].StartsWith("Tabela"))
                    {
                        actualTable = fInput[0].Split(' ')[1];
                    }
                    else
                    {
                        if (fInput[0] == "Nome")
                            continue;

                        fk.name = fInput[0];
                        fk.campo = fInput[1];
                        fk.onUpdate = fInput[5];
                        fk.onDelete = fInput[6];
                        fk.referenceTable = fInput[7];
                        fk.campoReference = fInput[8];

                        if (fInput[2].ToLower() == "yes")
                            fk.deferable = "DEFERRABLE";
                        else
                            fk.deferable = String.Empty;
                        if (fInput[3].ToLower() == "yes")
                            fk.deferade = "INITIALLY DEFERRED";
                        else
                            fk.deferable = String.Empty;
                        if (fInput[4].ToLower() == "simple")
                            fk.type = "MATCH SIMPLE";
                        else
                            fk.type = "MATCH FULL";

                        foreach (var tabela in tabelas)
                        {
                            if (tabela.name == actualTable)
                            {
                                tabela.foreignKeys.Add(fk);
                                Console.WriteLine(
                                    $"-> {fk.name} adicionada com sucesso na tabela {tabela.name}."
                                );
                                break;
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }

            return tabelas;
        }

        public static void GenerateSQL(List<Tabela> tabelas)
        {
            string fullSql = "";
            foreach (var tabela in tabelas)
            {
                string sql = $"\n\n\nDROP TABLE IF EXISTS public.{tabela.name} CASCADE;\n\n";
                sql += $"CREATE TABLE public.{tabela.name} (\n";
                foreach (var col in tabela.columns)
                {
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

                sql += $"\n);";

                sql += $"\n\nALTER TABLE public.{tabela.name} OWNER TO postgres;";

                sql += $"\n\nCOMMENT ON TABLE public.{tabela.name} IS '{tabela.comment}';";

                foreach (var col in tabela.columns)
                {
                    if (!string.IsNullOrEmpty(col.comment))
                    {
                        sql +=
                            $"\n\nCOMMENT ON COLUMN public.{tabela.name}.{col.name} IS '{col.comment}';";
                    }
                }
                fullSql += sql;
            }

            foreach (string s in GetInsertFile())
            {
                fullSql += $"\n{s}";
            }

            foreach (var tabela in tabelas)
            {
                string sql = "";
                if (tabela.pkColumns() != "")
                    sql +=
                        $"\n\nALTER TABLE ONLY public.{tabela.name} ADD CONSTRAINT {tabela.name}_pkey PRIMARY KEY ({tabela.pkColumns().Trim().TrimEnd(',')});";

                fullSql += sql;
            }

            foreach (var tabela in tabelas)
            {
                string uk = "",
                    sql = "";
                foreach (var col in tabela.columns)
                {
                    if (col.name.StartsWith("uk"))
                    {
                        uk += $"{col.name}, ";
                    }
                }

                if (uk != "")
                {
                    sql +=
                        $"\n\nALTER TABLE public.{tabela.name} ADD CONSTRAINT {tabela.name}uk UNIQUE ({uk.TrimEnd(',', ' ')});";

                    fullSql += sql;
                }
            }

            foreach (var tabela in tabelas)
            {
                string sql = "";
                foreach (var fk in tabela.foreignKeys)
                {
                    sql +=
                        $"\n\nALTER TABLE ONLY public.{tabela.name} ADD CONSTRAINT {fk.name} FOREIGN KEY ({fk.campo}) REFERENCES public.{fk.referenceTable}({fk.campoReference}) {fk.type} ON UPDATE {fk.onUpdate} ON DELETE {fk.onDelete} {fk.deferable} {fk.deferade};";
                }
                fullSql += sql;
            }

            #region Old CODE, to generate FKs from column names
            /*
            foreach (var tabela in tabelas)
            {
                string sql = "";
                int count = 1;
                foreach (var col in tabela.columns)
                {
                    if (col.name.Contains("fk"))
                    {
                        foreach (var tabela2 in tabelas) {
                            if (tabela2.name == tabela.name) continue;
                            foreach (var col2 in tabela2.columns)
                            {
                                if ((col.name.Substring(1) == col2.name.Substring(1) && col2.name.Contains("pk") && !col2.name.Contains("fk")) || (col.name.Substring(3) == col2.name.Substring(1) && col2.name.Contains("pk") && !col2.name.Contains("fk")))
                                {
                                    List<string> pkCols = new List<string>();
                                    List<string> fkCols = new List<string>();
                                    foreach (var col3 in tabela2.columns)
                                    {
                                        if (col3.name.Contains("pk")) {
                                            pkCols.Add(col3.name);

                                            foreach (var col4 in tabela.columns)
                                            {
                                                if (col4.name.Contains("fk") && (col4.name.Contains(col3.name.Substring(1)) || col4.name.Contains(col3.name.Substring(3))))
                                                {
                                                    fkCols.Add(col4.name);
                                                }
                                            }
                                        }
                                    }

                                    if(pkCols.Count > 1)
                                    {
                                        sql += $"\n\nALTER TABLE ONLY public.{tabela.name} ADD CONSTRAINT {tabela.name}fk{count} FOREIGN KEY ({string.Join(", ", fkCols)}) REFERENCES public.{tabela2.name}({string.Join(", ", pkCols)}) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE;";
                                        count++;
                                        break;
                                    }


                                    sql += $"\n\nALTER TABLE ONLY public.{tabela.name} ADD CONSTRAINT {tabela.name}fk{count} FOREIGN KEY ({col.name}) REFERENCES public.{tabela2.name}({col2.name}) ON UPDATE CASCADE ON DELETE RESTRICT DEFERRABLE;";
                                    count++;
                                    break;
                                }
                            }
                        }
                    }
                }

                fullSql += sql;
            }
            */
            #endregion

            SaveToFile(fullSql);
        }

        public static string[]? GetInsertFile()
        {
            try
            {
                string[] fileStrings = fileStrings = File.ReadAllLines(
                    "D:\\Documentos\\insert.txt"
                );
                return fileStrings;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Fallha ao encontrar o arquivo insert.txt:\n{ex.Message}");
            }
            return null;
        }

        public static void SaveToFile(String sql, string path = "D:\\Documentos\\sql.txt")
        {
            try
            {
                File.WriteAllText(path, sql);
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao salvar o arquivo: {ex.Message}");
            }
        }

        public static void showInConsole(List<Tabela> tabelas)
        {
            Console.WriteLine();
            Console.WriteLine(tabelas[0].name);
            Console.WriteLine(tabelas[0].comment);
            Console.WriteLine(tabelas[0].columns.Count);
            foreach (var col in tabelas[0].columns)
            {
                Console.WriteLine(
                    $"\n{col.pos} {col.name} {col.dataType} {col.size} {col.required} {col.comment}"
                );
            }
        }
    }
}
