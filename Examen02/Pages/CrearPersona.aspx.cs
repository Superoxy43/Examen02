using Examen02.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen02.Pages
{
    public partial class CrearPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LlenarListaProvincias();
            }
        }

        private void LlenarListaProvincias()
        {
            try
            {
                var ListaProvincias = new List<ListItem>();

                using (PV_Examen02Entities db = new PV_Examen02Entities())
                {

                    var query = (from lr in db.spConsultarTodasLasProvincias()
                                 select new ListItem
                                 {
                                     Value = lr.idProvincia.ToString(),
                                     Text = lr.nombre
                                 }
                                 ).ToList();

                    ListaProvincias.AddRange(query);

                    DdlProvincia.DataTextField = "Text";
                    DdlProvincia.DataValueField = "Value";

                    DdlProvincia.DataSource = ListaProvincias;
                    DdlProvincia.DataBind();
                }
            }
            catch (Exception)
            {
                Response.Redirect("Error.aspx");
            }
        }


        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            int idProvincia = Convert.ToInt32(DdlProvincia.SelectedItem.Value);

            string nombreCompleto = TxtNombCompleto.Text.Trim();
            string telefono = TxtTelefono.Text.Trim();
            DateTime fechaNacimiento = Convert.ToDateTime(TxtfechaNacimiento.Text.Trim());
            decimal salario = Convert.ToDecimal(TxtSalario.Text.Trim());

      

            try
            {
                using (PV_Examen02Entities db = new PV_Examen02Entities())
                {
                    db.spCrearPersona(idProvincia,nombreCompleto, telefono, fechaNacimiento,salario);
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }

            Response.Redirect("~/Pages/ExitoCrearPersona.aspx");
        }
    }
}