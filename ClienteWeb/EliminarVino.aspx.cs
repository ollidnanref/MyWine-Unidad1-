﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BibliotecaClases;
using Util;

namespace ClienteWeb
{
    public partial class EliminarVino : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            bool encontrado = false;
            foreach (Vino v in Vino.listaVinos)
            {
                if (v.Codigo.CompareTo(txtCodigo.Text) == 0)
                {
                    txtCodigo.Text = v.Codigo;
                    txtNombre.Text = v.Nombre;
                    txtColor.Text = v.Color;
                    txtAño.Text = v.Año.ToString();
                    txtPrecio.Text = v.Precio.ToString();
                    txtStock.Text = v.Stock.ToString();
                    encontrado = true;
                    break;
                }
            }
            if (!encontrado)
                lblMensaje.Text = "Vino no encontrado";
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            bool encontrado = false;
            foreach (Vino v in Vino.listaVinos)
            {
                if (v.Codigo.CompareTo(txtCodigo.Text) == 0)
                {
                    Vino.listaVinos.Remove(v);
                    encontrado = true;
                    Limpiar();
                    lblMensaje.Text = "Vino eliminado";
                    break;
                }
            }
            if (!encontrado)
                lblMensaje.Text = "Vino no encontrado";
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