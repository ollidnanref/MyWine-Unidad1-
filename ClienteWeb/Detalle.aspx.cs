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
    public partial class Detalle : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Si no hay cookie
                if (Request.Cookies["dato"] == null)
                {
                    Response.Redirect("ListarVino.aspx");
                }
                else
                {
                    //Recupera datos
                    lblCodigo.Text = Request.Cookies["dato"].Values["codigo"];
                    lblNombre.Text = Request.Cookies["dato"].Values["nombre"];
                    lblColor.Text = Request.Cookies["dato"].Values["color"];
                    lblAno.Text = Request.Cookies["dato"].Values["ano"];
                    lblPrecio.Text = Request.Cookies["dato"].Values["precio"];
                    lblStock.Text = Request.Cookies["dato"].Values["stock"];
                }
            }
        }

        protected void btbAgregar_Click(object sender, EventArgs e)
        {
            int cantidad = int.Parse(txtCantidad.Text);
            int stock = int.Parse(lblStock.Text);
            string codigo = lblCodigo.Text;
            if (stock == 0)
            {
                lblDetalle.Text = "Producto sin Stock";
            }
            if (stock < cantidad)
            {
                lblDetalle.Text = "Stock insuficiente";
            }
            if (stock >= cantidad)
            {
                bool encontrado = false;
                foreach (Vino vi in Venta.listaProductos)
                {
                    if (vi.Codigo.CompareTo(lblCodigo.Text) == 0)
                    {
                        lblDetalle.Text = "Producto ya existe en el carrito";
                        encontrado = true;
                        break;
                    }
                }
                if (encontrado == false)
                {
                    lblDetalle.Text = "Producto Agregado al carrito";
                    Vino v = new Vino();
                    v.Codigo = lblCodigo.Text;
                    v.Nombre = lblNombre.Text;
                    v.Color = lblColor.Text;
                    v.Año = int.Parse(lblAno.Text);
                    v.Precio = int.Parse(lblPrecio.Text);
                    v.Stock = cantidad;
                    Venta.listaProductos.Add(v);
                    foreach (Vino vi in Vino.listaVinos)
                    {
                        if (vi.Codigo.CompareTo(codigo) == 0)
                        {
                            vi.Stock = 0;
                            vi.Stock = stock - cantidad;
                            lblDetalle.Text = "Stock descontado";
                            break;
                        }
                    }
                }
            }
        }

        //bool encontrado = false;
        //foreach (Vino vi in Venta.listaProductos)
        //{
        //    if (vi.Codigo.CompareTo(lblCodigo.Text) == 0)
        //    {
        //        lblDetalle.Text = "Producto ya existe en el carrito";
        //        encontrado = true;
        //        break;
        //    }
        //}
        //if (encontrado == false)
        //{
        //    lblDetalle.Text = "Producto Agregado al carrito";
        //    Vino v = new Vino();
        //    v.Codigo = lblCodigo.Text;
        //    v.Nombre = lblNombre.Text;
        //    v.Color = lblColor.Text;
        //    v.Año = int.Parse(lblAno.Text);
        //    v.Precio = int.Parse(lblPrecio.Text);
        //    v.Stock = int.Parse(lblStock.Text);
        //    Venta.listaProductos.Add(v);
        //}
 
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarVino.aspx");
        }

        protected void btnCarrito_Click(object sender, EventArgs e)
        {
            Response.Redirect("Carrito.aspx");
        }
    }
}