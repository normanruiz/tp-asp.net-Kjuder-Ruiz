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
    public partial class About : Page
    {
        public List<Articulo> listadoArticulos;
        protected void Page_Load(object sender, EventArgs e)
        {
            ArticuloNegocio articuloNegocio = new ArticuloNegocio();
            try
            {
                listadoArticulos = articuloNegocio.listar();

            }
            catch (InvalidCastException excepcion)
            {
                // MessageBox.Show("Verifique los nulos en base de datos", "Actualizando listado", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            catch (Exception excepcion)
            {
                // MessageBox.Show(excepcion.ToString(), "Actualizando listado", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
        }
    }
}