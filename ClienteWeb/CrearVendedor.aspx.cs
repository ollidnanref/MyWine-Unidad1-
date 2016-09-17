using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using BibliotecaClases;
using Util;

namespace ClienteWeb
{
    public partial class CrearVendedor : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            //Comprobar que se encuentra ingresado otro vendedor con el mismo RUT
            bool encontrado = false;
            foreach (Vendedor ve in Vendedor.listaVendedores)
            {
                if (ve.Rut.CompareTo(txtRut.Text) == 0)
                {
                    lblVendedor.Text = "Vendedor ya existe";
                    Limpiar();
                    encontrado = true;
                    break;
                }
            }

            if (encontrado == false)
            {

                //Confirmar ingreso de vendedor nuevo
                lblVendedor.Text = "Vendedor Ingresado";

                // crear y llenar vendedor
                Vendedor v = new Vendedor();
                v.Rut = txtRut.Text;
                v.Nombre = txtNombre.Text;
                v.Apellido = txtApellido.Text;
                v.Direccion = txtDireccion.Text;
                v.Correo = txtCorreo.Text;
                v.Telefono = int.Parse(txtTelefono.Text);

                //guardar vendedor en lista de vendedores
                Vendedor.listaVendedores.Add(v);
                Limpiar();
            }
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

        /* VALIDACIONES A INCLUIR
        protected void valRut_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (ValidarRut(args.Value))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        private bool ValidarRut(string rut)
        {
            bool validacion = false;
            try
            {
                rut = rut.ToUpper();
                rut = rut.Replace(".", "");
                rut = rut.Replace("-", "");
                int rutAux = int.Parse(rut.Substring(0, rut.Length - 1));

                char dv = char.Parse(rut.Substring(rut.Length - 1, 1));

                int m = 0, s = 1;
                for (; rutAux != 0; rutAux /= 10)
                {
                    s = (s + rutAux % 10 * (9 - m++ % 6)) % 11;
                }
                if (dv == (char)(s != 0 ? s + 47 : 75))
                {
                    validacion = true;
                }
            }
            catch (Exception)
            {
            }
            return validacion;
        }

        protected void valCorreo_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (ValidarCorreo(args.Value))
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        private bool ValidarCorreo(string email)
        {
            String expresion;
            expresion = "\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
            if (Regex.IsMatch(email, expresion))
            {
                if (Regex.Replace(email, expresion, String.Empty).Length == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }*/
        
    }
}