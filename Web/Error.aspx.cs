using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class _Error : Page
    {
        public Exception excepcion;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                excepcion = (Exception)Session["excepcion"];
                if (excepcion == null) {
                    excepcion = new Exception("Esta accediendo manualmente a un area de reporte de errores");
                    Session.Add("pagOrigen", "Default.aspx");
                }
            }
            catch (Exception)
            {
                Response.Redirect("Default.aspx", false);
            }

        }

        protected void btnAceptarError_Click(object sender, EventArgs e)
        {
            Response.Redirect(Session["pagOrigen"].ToString(), false);
        }
    }
}