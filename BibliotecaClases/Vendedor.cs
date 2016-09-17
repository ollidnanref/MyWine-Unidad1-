using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BibliotecaClases
{
    public class Vendedor
    {
        public string Rut { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Direccion { get; set; }
        public string Correo { get; set; }
        public int Telefono { get; set; }
        public List<Vendedor> listaVendedores { get; set; }

        public Vendedor()
        {
            this.Init();
        }

        private void Init()
        {
            Rut = string.Empty;
            Nombre = string.Empty;
            Apellido = string.Empty;
            Direccion = string.Empty;
            Correo = string.Empty;
            Telefono = 0;
            listaVendedores = new List<Vendedor>();
        }
    }
}
