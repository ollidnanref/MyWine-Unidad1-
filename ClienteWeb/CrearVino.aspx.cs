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
    public partial class CrearVino : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            //Comprobar que vino no se encuentra en la lista de Vinos
            bool encontrado = false;
            foreach (Vino vi in Vino.listaVinos)
            {
                if (vi.Codigo.CompareTo(txtCodigo.Text) == 0)
                {
                    lblVino.Text = "Vino ya existe";
                    Limpiar();
                    encontrado = true;
                    break;
                }
            }

            if (encontrado == false)
            {
                lblVino.Text = "Vino Ingresado";

                Vino v = new Vino();

                v.Codigo = txtCodigo.Text;
                v.Nombre = txtNombre.Text;
                v.Color = txtColor.Text;
                v.Año = int.Parse(txtAño.Text);
                v.Precio = int.Parse(txtPrecio.Text);
                v.Stock = int.Parse(txtStock.Text);

                Vino.listaVinos.Add(v);
                Limpiar();
            }
        }

        private void Limpiar()
        {
            txtCodigo.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtColor.Text = string.Empty;
            txtAño.Text = string.Empty;
            txtPrecio.Text = string.Empty;
            txtStock.Text = string.Empty;
        }
    }
}