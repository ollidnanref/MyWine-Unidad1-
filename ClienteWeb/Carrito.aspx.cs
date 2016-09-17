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
    public partial class Carrito : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvCarrito.DataSource = Venta.listaProductos;
            gvCarrito.DataBind();
        }
        protected void gvCarrito_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarVino.aspx");
        }

        protected void gvCarrito_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
        }

        protected void gvCarrito_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            int cantidad = 0;
            {
                bool encontrado = false;
                foreach (Vino v in Venta.listaProductos)
                {
                    if (v.Codigo.CompareTo(txtCodigo.Text) == 0)
                    {
        //-----------------------------------------------------------------------
                        foreach (Vino vi in Venta.listaProductos)
                        {
                            if (vi.Codigo.CompareTo(txtCodigo.Text) == 0)
                            {
                                cantidad = vi.Stock;
                                break;
                            }
                        }

                        foreach (Vino vi in Vino.listaVinos)
                        {
                            if (vi.Codigo.CompareTo(txtCodigo.Text) == 0)
                            {
                                //vi.Stock = 0;
                                vi.Stock = vi.Stock + cantidad;
                                lblMensaje.Text = "Stock recuperado";
                                break;
                            }
                        }
         //----------------------------------------------------------------------
                        Venta.listaProductos.Remove(v);
                        encontrado = true;
                        Limpiar();
                        lblMensaje.Text = "Vino eliminado";
                        gvCarrito.DataSource = Venta.listaProductos;
                        gvCarrito.DataBind();
                        break;
                    }
                }
                if (!encontrado)
                    lblMensaje.Text = "Vino no encontrado";
            }
        }
        private void Limpiar()
        {
            txtCodigo.Text = string.Empty;
        }

        protected void btnCompra_Click(object sender, EventArgs e)
        {
            Server.Transfer("Inicio.aspx");
            
            
            //Response.Redirect("PedidoDeVenta.aspx");
        }

        protected void txtTotal_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            int total = 0;
            int total2 = 0;
            foreach (Vino vi in Venta.listaProductos)
            {
                total = vi.Stock * vi.Precio;
                total2 = total2 + total;
                total = 0;
            }
            txtTotal.Text = total2.ToString();
        }
    }
}