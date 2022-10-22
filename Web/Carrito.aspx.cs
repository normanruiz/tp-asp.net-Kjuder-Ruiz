using Modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace Web
{
    public partial class _Carrito : Page
    {
        public Controlador.CarritoNegocio listaCarrito { get; set; }
        public Articulo current { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            listaCarrito = new Controlador.CarritoNegocio();
            if (Session["carrito"] == null)
            {
                Session["carrito"] = new Dictionary<Articulo, int>();
            }

            listaCarrito.carrito.listaArticulos = (Dictionary<Articulo, int>) Session["carrito"];
            
        }

        protected void botonSeguirComprando_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }
        protected void botonTerminarCompra_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Confirmacion.aspx", false);
        }

        protected void botonVaciarCarrito_Click(object sender, EventArgs e)
        {
            Session["carrito"] = new Dictionary<Articulo, int>();
            Response.Redirect("./Carrito");
        }

        protected void botonLlenarCarrito_Click(object sender, EventArgs e)
        {
            Articulo art = new Articulo();
            art.Id = 1;
            art.Nombre = "Articulo 1";

            Session["carrito"] = listaCarrito.AgregarCarrito(art, 1);
            
        }
        protected void botonLlenarCarrito2_Click(object sender, EventArgs e)
        {
            Articulo art = new Articulo();
            art.Id = 2;
            art.Nombre = "Articulo 2";
            Session["carrito"] = listaCarrito.AgregarCarrito(art, 1);

        }

        protected void botonQuitarProductoCarrito_Click(object sender, ImageClickEventArgs e)
        {
            Articulo art = new Articulo();
            art = current;

            Session["carrito"] = listaCarrito.QuitarCarrito(art);
        }
    }
}