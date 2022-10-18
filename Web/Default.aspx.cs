using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controlador;
using Modelo;


namespace Web
{
    public partial class _Default : Page
    {
        public List<Articulo> listadoArticulos = new List<Articulo>();
        public List<Articulo> listadoCarrito = new List<Articulo>();
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio articuloNegocio = new ArticuloNegocio();
            try
            {
                listadoArticulos = articuloNegocio.listar();
            }
            catch (Exception excepcion)
            {
                Session.Add("pagOrigen","Default.aspx");
                Session.Add("excepcion", excepcion);
                Response.Redirect("Error.aspx",false);
            }
        }

        protected void botonCarrito_Click(object sender, ImageClickEventArgs e)
        {
            Session.Add("pagOrigen", "Default.aspx");
            Session.Add("listadoCarrito", listadoCarrito);
            Response.Redirect("Carrito.aspx", false);
        }
    }
}