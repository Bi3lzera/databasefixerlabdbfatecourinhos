namespace DicionarioDeDadosAdjust
{
    public class App
    {
        //Ponto de partida da aplicação.
        public static void Run()
        {
            List<Tabela> tabelas = new List<Tabela>(); //Intancia a lista de tabelas que será armazenado os dados de todas as tabelas, junto de suas colunas e FKs.

            Console.WriteLine("\n---------Iniciando importação de tabelas---------\n");

            string[]? fileStrings = GetInsertFile("dicionario");
            if (fileStrings != null)
                Console.WriteLine("Arquivo dicionario.txt encontrado com sucesso!\n");
            else
                Console.WriteLine(
                    "\nArquivo dicionario.txt não encontrado. Insira os dados manualmente.\n"
                );

            Console.WriteLine("Importando tabelas...\n");
            //Loop para buscar todas as tabelas com suas respectivas colunas até que a entrada seja "4321" que indica a finalização da inserção de tabelas.
            while (true)
            {
                if (fileStrings != null)
                {
                    List<string> tableTxt = new List<string>();
                    foreach (string s in fileStrings)
                    {
                        if (s.Split("	")[0] != "")
                        {
                            tableTxt.Add(s);
                        }
                        else
                        {
                            tableTxt.Add(s);
                            tabelas.Add(LoadTable(tableTxt));
                            tableTxt.RemoveRange(0, tableTxt.Count);
                        }
                    }
                    break;
                }
                else
                {
                    tabelas.Add(LoadTable(null)); //Solicita e insere uma nova tabela a lista
                }

                if (Console.ReadLine()?.Split("	")[0] == "4321") //Caso haja entrada no console com o número "4321" encerra o loop. (Para continuar, pasta inserir uma entrada vazia ou um enter).
                    break; //Comando para encerrar o loop caso a condição acima seja true.
            }

            Console.WriteLine($"\nSucesso! {tabelas.Count} tabelas foram importadas.");

            tabelas = LoadFKTable(tabelas); //Solicita e correga nas tabelas a tabela Foreign Key (FK). A tabela irá carregar a FK já em todas as tabelas anteriormente cadastradas.

            Console.WriteLine("\nFinalizado.");

            GenerateSQL(tabelas); //Gera o SQL das tabelas carregadas.

            Console.Write("\nPressione qualquer tecla para finalizar a aplicação...");
            Console.ReadKey();
        }

        //Busca os dados e carrega a Tabela, com dados da Tabela e suas Colunas.
        public static Tabela LoadTable(List<string>? tableTxt)
        {
            Tabela t = new Tabela(); //Instancia uma tabela temporária que será retornada.

            string? cabecalho;
            if (tableTxt == null)
            {
                Console.WriteLine("Cole o cabeçalho da tabela:");
                cabecalho = Console.ReadLine();
            }
            else
            {
                cabecalho = tableTxt[0]; //Busca os dados BRUTOS do cabeçalho.
                Console.WriteLine($"Carregando dados da tabela {cabecalho.Split('	')[0]}...");
            }

            if (cabecalho == null) //Evita de tentar cadastar um cabeçalho sem dados.
                return t; //Retorna uma tabela vazia.

            string[] fCabecalho = cabecalho.Split("	", 2); //Refina os dados de entrada do cabeçalho.
            for (int i = 1; true; i++) //Inicia o loop para buscar todas as colunas da tabela, o loop finaliza com uma entrada vazia de dados ou enter.
            {
                string? input;
                if (tableTxt == null)
                {
                    Console.WriteLine("Cole os dados da tabela:");
                    input = Console.ReadLine();
                }
                else
                {
                    input = tableTxt[i]; //Entrada de cada linha contendo os dados da coluna (DADOS BRUTOS).
                }

                if (input == null || input.Split("	")[0] == "") //Verifica se a entrada é nula ou vazia para encerrar o loop.
                    break; //Encerra o loop caso condição acima = true.

                string[] fInput = input.Split("	"); //Refina os dados da variável input em colunas para um array.

                if (fInput[0] == "Pos.")
                    continue;

                Column tColumn = new Column(); //Instancia um objeto coluna temporário para preencher as colunas de uma tabela.

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
                catch (Exception ex) //Catch da possível exceção gerada.
                {
                    Console.WriteLine(ex); //Dump no console da exceção gerada.
                }
                finally //Finalmente adiciona os dados captados a coluna temporária criada. Mas somente caso as colunas Pos e Nome não sejam nulas.
                {
                    if (tColumn.pos != 0 && tColumn.name != null) //Verifica se as colunas são nulas.
                    {
                        t.columns.Add(tColumn); //Se não forem nulas, adiciona os dados dessa coluna a variável colunas da lista tabelas.
                    }
                }
            }

            t.name = fCabecalho[0].Split(" ")[1]; //Adicioan os dados (NOME DA TABELA) de cabeçalho da tabela.
            t.comment = fCabecalho[1].Substring(13); //Adicioan os dados (COMENTÁRIO DA TABELA) de cabeçalho da tabela.

            Console.WriteLine($"-> Sucesso! {t.columns.Count} colunas adicionadas.");

            return t; //Retorna a tabela criada e preenchida.
        }

        //Função criada para carregar as Foreign Key da tabela.
        //Essa função depende da tabela separada, que instruí a forma como as FKs serão construídas.
        //Essa tabela deve ter os campos corrigidos (caso necessário) para os exatos nomes dos campos das tabelas anteriormente já arrumados.
        //Infelizmente é necessário comparar os campos dessa tabela (FK) com os da tabela (Dicionário de Dados),
        //pois se não o pograma irá gerar um SQL que não irá funcionar no Postgres.
        public static List<Tabela> LoadFKTable(List<Tabela> tabelas)
        {
            string[]? fileStrings = GetInsertFile("fktable");
            if (fileStrings != null)
                Console.WriteLine("\nLeitura do arquivo fktable.txt foi um sucesso!");
            else
                Console.WriteLine("\nLeitura do arquivo falhou. Insira os dados manulamente.");

            Console.WriteLine("\n---------Iniciando importação das FKs---------\n");
            string actualTable = ""; //Cria uma variável para armazenar o nome da tabela atual que está sendo criada as FKs.

            List<string> tableNotFoundList = new List<string>();
            for (int i = 0; true; i++) //Inicia o loop para buscar cada linha da tabela que está criando as FKs.
            {
                string? input;
                if (fileStrings == null)
                { //Capta a linha de dados (BRUTO).
                    Console.WriteLine("Cole a tabela de FKs:");
                    input = Console.ReadLine();
                }
                else
                {
                    input = fileStrings[i];
                }

                if (input == null || input.Split("	")[0] == "") //Identifica se a entrada de dados é nula ou vazia, para interromper a aplicação.
                    break; //Interrompe a aplicação, caso condição acima seja true.

                string[] fInput = input.Split("	"); //Refina os dados brutos captados na input.

                ForeignKey fk = new ForeignKey(); //Instancia um objeto ForeignKey temporário.

                try //Tenta adicionar os dados a tabela temporária fk.
                {
                    //Condição para verificar se a atual linha sendo verificada se trata do cabeçalho de uma tabela,
                    //caso sim, essa nova tabela será armazenada na variável actualTable.
                    //Essa verificação é necessária para que o programa sempre saiba qual tabela é atual,
                    //para que seja possível posteriormente identificar de qual tabela é as FKs identificadas.
                    if (fInput[0].Split(' ')[0].StartsWith("Tabela"))
                    {
                        actualTable = fInput[0].Split(' ')[1]; //Armazena o nome da tabel atual na variável actualTable.
                    }
                    else //Caso não seja o cabeçalho de uma tabela, o algoritmo irá tentar armazenar a atual linha na tabela temporária fk.
                    {
                        if (fInput[0] == "Nome") //Condição para verificar simplesmente se a linha atual é o cabeçalho da coluna. Provavelmente existe jeito melhor de fazer, mas esse funciona :).
                            continue; //Continua o loop e não passa pelas linhas a seguir.

                        //Armazena os dados nas variáveis da tabela fk e faz as devidas verificações para saber quais dados armazenar.
                        fk.name = fInput[0];
                        fk.campo = fInput[1];
                        fk.onUpdate = fInput[5];
                        fk.onDelete = fInput[6];
                        fk.referenceTable = fInput[7];
                        fk.campoReference = fInput[8];

                        if (fInput[2].ToLower() == "yes")
                            fk.deferrable = "DEFERRABLE";
                        else
                            fk.deferrable = String.Empty;
                        if (fInput[3].ToLower() == "yes")
                            fk.deferrade = "INITIALLY DEFERRED";
                        else
                            fk.deferrable = String.Empty;
                        if (fInput[4].ToLower() == "simple")
                            fk.type = "MATCH SIMPLE";
                        else
                            fk.type = "MATCH FULL";

                        //Loop para procurar a tabela atual, na lista de tabelas fornecida na construção desta função.
                        foreach (var tabela in tabelas)
                        {
                            if (tabela.name == actualTable) //Quando identificar a tabela.
                            {
                                tabela.foreignKeys.Add(fk); //armazena nela usando a tabela temporária fk.
                                Console.WriteLine(
                                    $"-> {fk.name} adicionada com sucesso na tabela {tabela.name}."
                                ); //Dump de dados.
                                break; //Interrompe o loop para busca da tabela, afinal, se já encontrou a tabela, não há necessidade de continuar.
                            }
                            if (tabela.name == tabelas.Last().name)
                            {
                                Console.WriteLine($"ERRO: Tabela {actualTable} não encontrada!");
                                tableNotFoundList.Add(actualTable);
                            }
                        }
                    }
                }
                catch (Exception ex) //Caso ocorra algum erro, aqui gerará a exceção e não irá interromper a aplicação.
                {
                    Console.WriteLine(ex); //Dump do erro gerado.
                }
            }

            if (tableNotFoundList.Count > 0)
            {
                Console.WriteLine(
                    "\nATENÇÃO: HÁ TABELAS NÃO ENCONTRADAS, verifique os dados da tabela de FKs."
                );
                Console.WriteLine("Tabelas:");
                foreach (var tabela in tableNotFoundList)
                    Console.WriteLine(tabela);
                Console.WriteLine("\nAperte qualquer tecla para continuar...");
                Console.ReadKey();
            }

            return tabelas; //Retorna as tabela fornecidas, já ajustadas com as tabelas FKs.
        }

        //Função para gerar o SQL com a Lista de tabelas já ajustadas.
        public static void GenerateSQL(List<Tabela> tabelas)
        {
            Console.WriteLine("\n---------Iniciando geração do SQL---------\n");
            string fullSql = ""; //Variável principal que irá armazenar todo o SQL.

            //Loop que percorrerá cada tabela da lista tabelas.
            //Esse loop irá gerar o CREATE TABLE de cada tabela.
            //Existe um adicional de "DROP TABLE" para garantir que seja gerada uma nova tabela e exclua qualquer que existir no BD.
            //Porém, recomenda-se que a database esteja limpa.

            Console.WriteLine("Gerando SQL...\n");
            Console.WriteLine("->Tabelas e Colunas com seus respectivos comentários...");
            foreach (var tabela in tabelas)
            {
                string sql = $"\n\n\nDROP TABLE IF EXISTS public.{tabela.name} CASCADE;\n\n"; //Drop na table, caso ela já exista.
                sql += $"CREATE TABLE public.{tabela.name} (\n"; //Cria a tabela.
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

                sql += $"\n);"; //Finaliza o create table.

                sql += $"\n\nALTER TABLE public.{tabela.name} OWNER TO postgres;"; //Garante que tabela será vinculada a DB postgres.

                sql += $"\n\nCOMMENT ON TABLE public.{tabela.name} IS '{tabela.comment}';"; //Gera o comentário da atual tabela (COMENTÁRIO DA TABELA).

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

            Console.WriteLine("->Inserts de dados...");
            //Função opcional, aqui o algoritmo irá buscar por um arquivo chamanda "insert.txt", nessa arquivo conterá os INSERT de dados das tabelas.
            //Foi criado esse loop, exatamente nesse local, pois é exatamente no local do SQL que ele deve estar, se ele for executado depois de ter
            //criado as PKs e FKs, terá muitos erros de FK não encontrada. Até dá para corrigir isso, colocando os inserts nas posições corretas, porém,
            //isso daria MUITO mais trabalho.
            string[]? fileInsertData = GetInsertFile("insert");
            if (fileInsertData != null)
                foreach (string s in fileInsertData)
                {
                    fullSql += $"\n{s}";
                }
            else
                Console.WriteLine("->->Arquivo insert.txt não foi encotrado. Pulando...");

            Console.WriteLine("->Primary Keys de todas as tabelas...");
            //Loop parar criar as Primary Key, de cada tabela.
            foreach (var tabela in tabelas)
            {
                string sql = "";
                if (tabela.pkColumns() != "")
                    sql +=
                        $"\n\nALTER TABLE ONLY public.{tabela.name} ADD CONSTRAINT {tabela.name}_pkey PRIMARY KEY ({tabela.pkColumns().Trim().TrimEnd(',')});";

                fullSql += sql;
            }

            Console.WriteLine("->Unique Keys de todas as tabelas...");
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

            Console.WriteLine("->Foreign Keys de todas as colunas...");
            //Loop para criar as Foreign Keys, de cada coluna, de cada tabela.
            foreach (var tabela in tabelas)
            {
                string sql = "";
                foreach (var fk in tabela.foreignKeys)
                {
                    sql +=
                        $"\n\nALTER TABLE ONLY public.{tabela.name} ADD CONSTRAINT {fk.name} FOREIGN KEY ({fk.campo}) REFERENCES public.{fk.referenceTable}({fk.campoReference}) {fk.type} ON UPDATE {fk.onUpdate} ON DELETE {fk.onDelete} {fk.deferrable} {fk.deferrade};";
                }
                fullSql += sql;
            }

            //Pula isso, my mistake.
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

            Console.WriteLine("\nArquivo SQL Gerado com Sucesso!\n");
            //Chama função para escrever todo o SQL gerado desta função, em um arquivo .txt.
            SaveToFile(fullSql);
        }

        //Função para ler um arquivo de texto e retornar um array de linhas.
        public static string[]? GetInsertFile(string txtName)
        {
            try
            {
                string[] fileStrings = fileStrings = File.ReadAllLines($".\\{txtName}.txt");
                return fileStrings;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Fallha ao encontrar o arquivo {txtName}.txt:\n{ex.Message}");
            }
            return null;
        }

        //Função para escrever em um arquivo txt. Neste caso, servindo para escrever o sql no arquivo sql.txt.
        public static void SaveToFile(String sql, string path = ".\\sql.txt")
        {
            try
            {
                File.WriteAllText(path, sql);
                Console.WriteLine($"Arquivo salvo com sucesso no local: {path}");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erro ao salvar o arquivo: {ex.Message}");
            }
        }

        //Dump de dados.
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
