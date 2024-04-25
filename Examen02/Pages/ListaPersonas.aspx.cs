using Examen02.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen02.Pages
{
    public partial class ExitoCrearPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (PV_Examen02Entities db = new PV_Examen02Entities())
                {

                    var Lista = db.spConsultarTodasLasPersonas().ToList();

                    GvListaPersonas.DataSource = Lista;
                    GvListaPersonas.DataBind();



                }

            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
        }
    }
}