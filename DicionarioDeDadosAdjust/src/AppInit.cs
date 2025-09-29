namespace DicionarioDeDadosAdjust
{
    public class AppInit
    {
        public void Init()
        {
            if (!Directory.Exists("./output"))
                Directory.CreateDirectory("./output");

            if (!Directory.Exists("./files"))
                Directory.CreateDirectory("./files");
        }
    }
}
