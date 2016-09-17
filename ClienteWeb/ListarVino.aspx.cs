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
    public partial class ListarVino : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvVinos.DataSource = Vino.listaVinos;
            gvVinos.DataBind();
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string codigo = txtCodigo.Text;
            var busqueda = (from vi in Vino.listaVinos
                            where vi.Codigo == codigo
                            select vi).ToList();

            gvVinos.DataSource = busqueda;
            gvVinos.DataBind();
        }

        protected void gvVinos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //Al cambiar de pagina
            gvVinos.PageIndex = e.NewPageIndex;
            gvVinos.DataSource = Vino.listaVinos;
            gvVinos.DataBind();
        }

        protected void gvVinos_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Obtener el indice de la fila seleccionada
            int f = gvVinos.SelectedIndex;

            //Al selecciona una fila enviar los datos del producto al siguiente formulario
            HttpCookie dato = new HttpCookie("dato");

            //Recuperar datos
            dato.Values.Add("codigo",gvVinos.Rows[f].Cells[1].Text);
            dato.Values.Add("nombre",gvVinos.Rows[f].Cells[2].Text);
            dato.Values.Add("color",gvVinos.Rows[f].Cells[3].Text);
            dato.Values.Add("ano",gvVinos.Rows[f].Cells[4].Text);
            dato.Values.Add("precio",gvVinos.Rows[f].Cells[5].Text);
            dato.Values.Add("stock",gvVinos.Rows[f].Cells[6].Text);

            //Enviar al cookie
            Response.Cookies.Add(dato);

            //Redireccionar
            Response.Redirect("Detalle.aspx");
        }
    }
}