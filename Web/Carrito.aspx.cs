﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class _Carrito : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void botonSeguirComprando_Click(object sender, ImageClickEventArgs e)
        {
            //Session.Add("pagOrigen", "Default.aspx");
            //Session.Add("listadoCarrito", listadoCarrito);
            Response.Redirect("Default.aspx", false);
        }

        protected void botonTerminarCompra_Click(object sender, ImageClickEventArgs e)
        {
            //Session.Add("pagOrigen", "Default.aspx");
            //Session.Add("listadoCarrito", listadoCarrito);
            Response.Redirect("Confirmacion.aspx", false);
        }
    }
}