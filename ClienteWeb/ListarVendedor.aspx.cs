using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaClases;
using Util;


namespace ClienteWeb
{
    public partial class ListarVendedor : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvVendedores.DataSource = Vendedor.listaVendedores;
            gvVendedores.DataBind();      
        }

        protected void gvVendedores_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string rut = txtRut.Text;
            var busqueda = (from ve in Vendedor.listaVendedores
                            where ve.Rut == rut
                            select ve).ToList();

            gvVendedores.DataSource = busqueda;
            gvVendedores.DataBind();
        }
    }
}