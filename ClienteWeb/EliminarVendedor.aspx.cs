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
    public partial class EliminarVendedor : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            bool encontrado = false;
            foreach (Vendedor v in Vendedor.listaVendedores)
            {
                if (v.Rut.CompareTo(txtRut.Text) == 0)
                {
                    txtRut.Text = v.Rut;
                    txtNombre.Text = v.Nombre;
                    txtApellido.Text = v.Apellido;
                    txtDireccion.Text = v.Direccion;
                    txtCorreo.Text = v.Correo;
                    txtTelefono.Text = v.Telefono.ToString();
                    encontrado = true;
                    break;
                }
            }
            if (!encontrado)
                lblMensaje.Text = "Vendedor no encontrado";
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            bool encontrado = false;
            foreach (Vendedor v in Vendedor.listaVendedores)
            {
                if (v.Rut.CompareTo(txtRut.Text) == 0)
                {
                    Vendedor.listaVendedores.Remove(v);
                    encontrado = true;
                    Limpiar();
                    lblMensaje.Text = "Vendedor eliminado";
                    break;
                }
            }
            if (!encontrado)
                lblMensaje.Text = "Vendedor no encontrado";
        }

        private void Limpiar()
        {
            txtRut.Text = string.Empty;
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtDireccion.Text = string.Empty;
            txtCorreo.Text = string.Empty;
            txtTelefono.Text = string.Empty;
        }
    }
}