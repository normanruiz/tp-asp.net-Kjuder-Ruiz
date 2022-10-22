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
        public List<Articulo> listadoArticulos { get; set; }
        public Dictionary<int, int> listadoCarrito { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio articuloNegocio = new ArticuloNegocio();
            try
            {
                listadoArticulos = articuloNegocio.listar();

                if (!IsPostBack)
                {
                    listadoCarrito = new Dictionary<int, int>();
                    Session.Add("listadoCarrito", listadoCarrito);
                    RepArticulos.DataSource = listadoArticulos;
                    RepArticulos.DataBind();
                }
                else 
                {
                    listadoCarrito = ((Dictionary<int, int>)(Session["listadoCarrito"]));
                }

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

        protected void agregar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(((Button)sender).CommandArgument);


                if (listadoCarrito.ContainsKey(id))
                {
                    listadoCarrito[id] += 1;
                }
                else
                {
                    listadoCarrito.Add(id, 1);
                }

                Session["listadoCarrito"] = listadoCarrito;
    
        }
    }
}