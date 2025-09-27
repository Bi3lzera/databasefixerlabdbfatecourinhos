namespace DicionarioDeDadosAdjust
{
    public class Menu
    {
        App app = new App();
        List<string> menuItens = new List<string>();

        //  
        //Ponto de partida da aplicação.
        //
        public void Run()
        {
            MenuItens();

            while (true)
            {
                Console.WriteLine("***************************MENU***************************");
                foreach (string s in menuItens)
                {
                    Console.WriteLine($"{menuItens.IndexOf(s) + 1}. {s}");
                }
                Console.Write("Digite a opção desejada: ");
                menuRun(Console.ReadLine());
            }
        }

        public void menuRun(string option)
        {
            switch (option)
            {
                case "1":
                    GerarArquivo();
                    break;
                case "2":
                    Console.WriteLine("Saindo...");
                    break;
                default:
                    Console.WriteLine("Opção inválida!");
                    break;
            }
        }

        public void MenuItens()
        {
            menuItens.Add("Gerar Arquivo");
            menuItens.Add("Sair");
        }

        public void GerarArquivo()
        {
            Console.WriteLine("\n---------Iniciando importação de tabelas---------\n");

            string[]? fileStrings = app.ReadFile("dicionario", "txt");
            if (fileStrings != null)
                Console.WriteLine("Arquivo dicionario.txt encontrado com sucesso!\n");
            else
                Console.WriteLine(
                    "\nArquivo dicionario.sql não encontrado. Insira os dados manualmente.\n"
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
                            app.tabelas.Add(app.LoadTable(tableTxt));
                            tableTxt.RemoveRange(0, tableTxt.Count);
                        }
                    }
                    break;
                }
                else
                {
                    app.tabelas.Add(app.LoadTable(null)); //Solicita e insere uma nova tabela a lista
                }

                if (Console.ReadLine()?.Split("	")[0] == "4321") //Caso haja entrada no console com o número "4321" encerra o loop. (Para continuar, pasta inserir uma entrada vazia ou um enter).
                    break; //Comando para encerrar o loop caso a condição acima seja true.
            }

            Console.WriteLine($"\nSucesso! {app.tabelas.Count} tabelas foram importadas.");

            app.tabelas = app.LoadFKTable(app.tabelas); //Solicita e correga nas tabelas a tabela Foreign Key (FK). A tabela irá carregar a FK já em todas as tabelas anteriormente cadastradas.

            Console.WriteLine("\nFinalizado.");

            app.GenerateSQL(app.tabelas); //Gera o SQL das tabelas carregadas.
        }
    }
}