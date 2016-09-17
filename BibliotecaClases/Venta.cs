using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BibliotecaClases
{
    public class Venta
    {
        public string NombreCliente { get; set; }
        public string NombreVendedor { get; set; }
        public DateTime FechaVenta { get; set; }
        public int CostoTotalCompra { get; set; }
        public List<Vino> listaProductos { get; set; }

        public Venta()
        {
            this.Init();
        }

        private void Init()
        {
            NombreCliente = string.Empty;
            NombreVendedor = string.Empty;
            FechaVenta = new DateTime(1990, 1, 1);
            CostoTotalCompra = 0;
            listaProductos = new List<Vino>();
        }
    }
}
