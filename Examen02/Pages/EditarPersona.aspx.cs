using Examen02.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen02.Pages
{
    public partial class EditarPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LlenarListaProvincias();
                CargarInformacionDeProvincia();
            }
        }

        private void CargarInformacionDeProvincia()
        {
            int idPersona = Convert.ToInt32(Request.QueryString["id"]);
            TxtidPersona.Text = idPersona.ToString();

            try
            {
                using (PV_Examen02Entities db = new PV_Examen02Entities())
                {
                    var datosPersona = db.spConsultarPersonaPorId(idPersona).FirstOrDefault();

                    if (datosPersona != null)
                    {
                        string idProvincia = datosPersona.idProvincia.ToString();
                        DdlProvincia.Items.FindByValue(idProvincia).Selected = true;

                        TxtNombCompleto.Text = datosPersona.nombreCompleto;
                        TxtTelefono.Text = datosPersona.telefono;
                        TxtfechaNacimiento.Text = datosPersona.fechaNacimiento.ToString();
                        TxtSalario.Text = datosPersona.salario.ToString();
                    }
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
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

        protected void BtnEditar_Click(object sender, EventArgs e)
        {
            try
            {

                int idProvincia = Convert.ToInt32(DdlProvincia.SelectedItem.Value);

                int idPersona = Convert.ToInt32(TxtidPersona.Text.Trim());
                string nombreCompleto = TxtNombCompleto.Text.Trim();
                string telefono = TxtTelefono.Text.Trim();
                DateTime fechaNacimiento = Convert.ToDateTime(TxtfechaNacimiento.Text.Trim());
                decimal salario = Convert.ToDecimal(TxtSalario.Text.Trim());

             

                using (PV_Examen02Entities db = new PV_Examen02Entities())
                {
                    db.spEditarPersona(idPersona, idProvincia, nombreCompleto, telefono,fechaNacimiento, salario);
                }
            }
            catch (Exception)
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
            Response.Redirect("ResultadoEditarPersona.aspx");
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                int idPersona = Convert.ToInt32(TxtidPersona.Text.Trim());
                using (PV_Examen02Entities db = new PV_Examen02Entities())
                {
                    db.spEliminarPersona(idPersona);
                }
            }
            catch (Exception)
            {

                Response.Redirect("Error.aspx");
            }
            Response.Redirect("ResultadoEliminarPersona.aspx");
        }
    }
}