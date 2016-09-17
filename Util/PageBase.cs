using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BibliotecaClases;
using System.Web.UI;

namespace Util
{
    public class PageBase : Page
    {
        public Vendedor Vendedor
        {
            get
            {
                if (Session["Vendedor"] == null)
                {
                    Session["Vendedor"] = new Vendedor();
                }
                return (Vendedor)Session["Vendedor"];
            }
            set { Session["Vendedor"] = value; }
        }


        public Vino Vino
        {
            get
            {
                if (Session["Vino"] == null)
                {
                    Session["Vino"] = new Vino();
                }
                return (Vino)Session["Vino"];
            }
            set { Session["Vino"] = value; }
        }


        public Venta Venta
        {
            get
            {
                if (Session["Venta"] == null)
                {
                    Session["Venta"] = new Venta();
                }
                return (Venta)Session["Venta"];
            }
            set { Session["Venta"] = value; }
        }

    }
}
