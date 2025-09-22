namespace DicionarioDeDadosAdjust
{
    public class App
    {
        public static void Run()
        {
            List<Tabela> tabelas = new List<Tabela>(); //Intancia a lista de tabelas que será armazenado os dados de todas as tabelas, junto de suas colunas e FKs

            //Loop para buscar todas as tabelas com suas respectivas colunas até que a entrada seja "4321" que indica a finalização da inserção de tabelas
            while (true)
            {
                tabelas.Add(LoadTable()); //Solicita e insere uma nova tabela a lista

                if (Console.ReadLine().Split("	")[0] == "4321") //Caso haja entrada no console com o número "4321" encerra o loop. (Para continuar, pasta inserir uma entrada vazia ou um enter)
                    break; //Comando para encerrar o loop caso a condição acima seja true;
            }

            tabelas = LoadFKTable(tabelas); //Solicita e correga nas tabelas a tabela Foreign Key (FK). A tabela irá carregar a FK já em todas as tabelas anteriormente cadastradas.

            Console.WriteLine(tabelas[0].foreignKeys.Count); //Dump de variáveis 
            Console.WriteLine(tabelas[0].foreignKeys[0].name); //Dump de variáveis

            GenerateSQL(tabelas); //Gera o SQL das tabelas carregadas.
        }

        //Busca os dados e carrega a Tabela, com dados da Tabela e suas Colunas
        public static Tabela LoadTable()
        {
            Tabela t = new Tabela(); //Instancia uma tabela temporária que será retornada

            Console.WriteLine("Cole o cabeçalho da tabela:");
            string cabecalho = Console.ReadLine(); //Busca os dados BRUTOS do cabeçalho
            string[] fCabecalho = cabecalho.Split("	", 2); //Refina os dados de entrada do cabeçalho
            while (true) //Inicia o loop para buscar todas as colunas da tabela, o loop finaliza com uma entrada vazia de dados ou enter
            {
                Console.WriteLine("Cole os dados da tabela:");
                string input = Console.ReadLine(); //Entrada de cada linha contendo os dados da coluna (DADOS BRUTOS)
                if (input.Split("	")[0] == "") //Verifica se a entrada é vazia para encerrar o loop.
                    break; //Encerra o loop caso condição acima = true;

                string[] fInput = input.Split("	"); //Refina os dados da variável input em colunas para um array
                Column tColumn = new Column(); //instancia um objeto coluna temporário para preencher as colunas de uma tabela.

                //Tenta inserir os dados na coluna temporária criada, 
                //caso algum dado esteja incorreto ou de forma errada, 
                //aqui gerará uma exceção, mas não irá interromper o app.
                try
                {
                    tColumn.pos = Convert.ToInt32(fInput[0]);
                    tColumn.name = fInput[1];
                    tColumn.dataType = fInput[2];
                    tColumn.size = fInput[3];
                    tColumn.required = fInput[4];
                    tColumn.comment = fInput[5];
                }
                catch (Exception ex) //Catch da possível exceção gerada
                {
                    Console.WriteLine(ex); //Dump no console da exceção gerada
                }
                finally //Finalmente adiciona os dados captados a coluna temporária criada. Mas somente caso as colunas Pos e Nome não sejam nulas.
                {
                    if (tColumn.pos != 0 && tColumn.name != null) //Verifica se as colunas são nulas.
                        t.columns.Add(tColumn); //Se não forem nulas, adiciona os dados dessa coluna a variável colunas da lista tabelas
                }
            }

            t.name = fCabecalho[0].Split(" ")[1]; //Adicioan os dados (NOME DA TABELA) de cabeçalho da tabela
            t.comment = fCabecalho[1].Substring(13); //Adicioan os dados (COMENTÁRIO DA TABELA) de cabeçalho da tabela

            return t; //Retorna a tabela criada e preenchida
        }

        //Função criada para carregar as Foreign Key da tabela.
        //Essa função depende da tabela separada, que instruí a forma como as FKs serão construídas.
        //Essa tabela deve ter os campos corrigidos (caso necessário) para os exatos nomes dos campos das tabelas anteriormente já arrumados.
        //Infelizmente é necessário comparar os campos dessa tabela (FK) com os da tabela (Dicionário de Dados),
        //pois se não o pograma irá gerar um SQL que não irá funcionar no Postgres.
        public static List<Tabela> LoadFKTable(List<Tabela> tabelas)
        {
            Console.WriteLine("Cole a tabela de FKs:");
            string actualTable = ""; //Cria uma variável para armazenar o nome da tabela atual que está sendo criada as FKs;
            while (true) //Inicia o loop para buscar cada linha da tabela que está criando as FKs
            {
                string input = Console.ReadLine(); //Capta a linha de dados (BRUTO).
                if (input == "") //Identifica se a entrada de dados é vazia, para interromper a aplicação.
                    break; //Interrompe a aplicação, caso condição acima seja true.

                if (input == null || input.Split("	")[0] == "") //Identifica se a entrada de dados é vazia, para interromper a aplicação.
                    break; //Interrompe a aplicação, caso condição acima seja true.

                string[] fInput = input.Split("	"); //Refina os dados brutos captados na input.

                ForeignKey fk = new ForeignKey(); //Instancia um objeto ForeignKey temporário.

                try //Tenta adicionar os dados a tabela temporária fk;
                {
                    //Condição para verificar se a atual linha sendo verificada se trata do cabeçalho de uma tabela,
                    //caso sim, essa nova tabela será armazenada na variável actuLTable.
                    //Essa verificação é necessária para que o programa sempre saiba qual tabela é atual,
                    //para que seja possível posteriormente identificar de qual tabela é as FKs identificadas.
                    if (fInput[0].Split(' ')[0].StartsWith("Tabela"))
                    {
                        actualTable = fInput[0].Split(' ')[1];
                    }
                    else //Caso não seja o cabeçalho de uma tabela, o algoritmo irá tentar armazenar a atual linha na tabela temporária fk
                    {
                        if (fInput[0] == "Nome") //Condição para verificar simplesmente se a linha atual é o cabeçalho da coluna. Exite jeito melhor de fazer, mas esse funciona :).
                            continue; //Continua o loop e não passa pelas linhas a seguir.

                        //Armazena os dados nas variáveis da tabela fk e faz as devidas verificações para saber quais dados armazenar.
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

                        //Loop para procurar a tabela atual, na lista de tabelas fornecida na construção desta função
                        foreach (var tabela in tabelas)
                        {
                            if (tabela.name == actualTable) //Quando identificar a tabela
                            {
                                tabela.foreignKeys.Add(fk); //armazena nela usando a tabela temporária fk.
                                Console.WriteLine(
                                    $"-> {fk.name} adicionada com sucesso na tabela {tabela.name}."
                                ); //Dump de dados.
                                break; //Interrompe o loop para busca da tabela, afinal, se já encontrou a tabela, não há necessidade de continuar.
                            }
                        }
                    }
                }
                catch (Exception ex) //Caso ocorra algum erro, aqui gerará a exceção e não irá interromper a aplicação.
                {
                    Console.WriteLine(ex); //Dump do erro gerado.
                }
            }

            return tabelas; //Retorna as tabela fornecidas, já ajustadas com as tabelas FKs.
        }

        //Função para gerar o SQL com a Lista de tabelas já ajustadas. 
        public static void GenerateSQL(List<Tabela> tabelas)
        {
            string fullSql = ""; //Variável principal que irá armazenar todo o SQL.

            //Loop que percorrerá cada tabela da lista tabelas.
            //Esse loop irá gerar o CREATE TABLE de cada tabela.
            //Existe um adicional de "DROP TABLE" para garantir que seja gerada uma nova tabela e exclua qualquer que existir no BD.
            //Porém, recomenda-se que a database esteja limpa.
            foreach (var tabela in tabelas)
            {
                string sql = $"\n\n\nDROP TABLE IF EXISTS public.{tabela.name} CASCADE;\n\n"; //Drop na table, caso ela já exista
                sql += $"CREATE TABLE public.{tabela.name} (\n"; //Cria a tabela
                //Cria as colunas, o loop percorre todas listadas na ATUAL tabela.
                foreach (var col in tabela.columns)
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

                sql += $"\n);"; //Finaliza o create table;

                sql += $"\n\nALTER TABLE public.{tabela.name} OWNER TO postgres;"; //Garante que tabela será vinculada a DB postgres;

                sql += $"\n\nCOMMENT ON TABLE public.{tabela.name} IS '{tabela.comment}';"; //Gera o comentário da atual tabela (COMENTÁRIO DA TABELA);
                
                //Loop para gerar os comentários, de cada tabela.
                foreach (var col in tabela.columns)
                {
                    if (!string.IsNullOrEmpty(col.comment)) //Validação para verificar se a variável do comentário da tabela não é nulo ou está vazio.
                    {
                        sql +=
                            $"\n\nCOMMENT ON COLUMN public.{tabela.name}.{col.name} IS '{col.comment}';";
                    }
                }

                fullSql += sql; // Adiciona tudo da variável temporária para a variável principal de comandos SQL.
            }

            //Função opcional, aqui o algoritmo irá buscar por um arquivo chamanda "insert.txt", nessa arquivo conterá os INSERT de dados das tabelas.
            //Foi criado esse loop, exatamente nesse local, pois é exatamente no local do SQL que ele deve estar, se ele for executado depois de ter
            //criado as PKs e FKs, terá muitos erros de FK não encontrada. Até dá para corrigir isso, colocando os inserts nas posições corretas, porém,
            //isso daria MUITO mais trabalho.
            foreach (string s in GetInsertFile())
            {
                fullSql += $"\n{s}";
            }

            //Loop parar criar as Primary Key, de cada tabela. 
            foreach (var tabela in tabelas)
            {
                string sql = "";
                if (tabela.pkColumns() != "")
                    sql +=
                        $"\n\nALTER TABLE ONLY public.{tabela.name} ADD CONSTRAINT {tabela.name}_pkey PRIMARY KEY ({tabela.pkColumns().Trim().TrimEnd(',')});";

                fullSql += sql;
            }

            //Loop para criar as Unique Keys, de cada coluna, de cada tabela.
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

            //Loop para criar as Foreign Keys, de cada coluna, de cada tabela.
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

            //Esquece isso, my mistake.
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
