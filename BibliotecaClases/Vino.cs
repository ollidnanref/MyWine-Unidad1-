using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BibliotecaClases
{
    public class Vino
    {
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public string Color { get; set; }
        public int Año { get; set; }
        public int Precio { get; set; }
        public int Stock { get; set; }
        public List<Vino> listaVinos { get; set; }

        public Vino()
        {
            this.Init();
        }

        private void Init()
        {
            Codigo = string.Empty;
            Nombre = string.Empty;
            Color = string.Empty;
            Año = 0;
            Precio = 0;
            Stock = 0;
            listaVinos = new List<Vino>();
        }
    }
}
