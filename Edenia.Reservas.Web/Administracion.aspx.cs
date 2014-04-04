using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Obout.Ajax.UI.ColorPicker;
using Edenia.Reservas.Comun;
using Edenia.Reservas.Negocio;

namespace Edenia.Reservas.Web
{
    public partial class Administracion : System.Web.UI.Page
    {      
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (!IsPostBack)
            {
                if (Session["ControlEstilos"] == null)
                {
                    List<DomControlEstilos> ListControlEstilo = new List<DomControlEstilos>();
                    Session["ControlEstilos"] = ListControlEstilo;
                }
                CargarDatosIniciales();
                CargarControlEstilo();
                CargarMensajes();
                Limpiar();
            }

        }

        public void CargarDatosIniciales()
        {
            try
            {
                ControlEstilos objEstilos = new ControlEstilos();
                List<DomTipoControl> ListTipoControl = new List<DomTipoControl>(objEstilos.ObtenerTipoControl(lblmensaje));
                if (ListTipoControl != null && ListTipoControl.Count > 0)
                {
                    ddrControles.DataSource = ListTipoControl;
                    ddrControles.DataValueField = TABLA_TIPO_CONTROLES.ID_TIPO_CONTROL;
                    ddrControles.DataTextField = TABLA_TIPO_CONTROLES.TIPO_CONTROL;
                    ddrControles.DataBind();
                }

                List<DomEstilos> ListEstilos = new List<DomEstilos>(objEstilos.ObtenerEstilos(lblmensaje));
                if (ListEstilos != null && ListEstilos.Count > 0)
                {
                    ddrEstilos.DataSource = ListEstilos;
                    ddrEstilos.DataValueField = TABLA_ESTILOS.ID_ESTILO;
                    ddrEstilos.DataTextField = TABLA_ESTILOS.NOMBRE_ESTILO;
                    ddrEstilos.DataBind();
                }
            }
            catch (Exception ex)
            {
                lblmensaje.Text = ex.Message;
            }
        }

        public void CargarControlEstilo()
        {
            try
            {
                ControlEstilos objEstilos = new ControlEstilos();
                List<DomControlEstilos> List = new List<DomControlEstilos>(objEstilos.ObtenerControlEstilos(lblmensaje));

                if (List != null && List.Count > 0)
                {
                    Session["ControlEstilos"] = List;
                    gdEstilos.DataSource = List;
                    gdEstilos.DataBind();
                }
            }
            catch (Exception ex)
            {
                lblmensaje.Text = ex.Message;
            }
        }

        protected void AC_btnAdd_Click(object sender, ImageClickEventArgs e)
        {
            lblmensaje.Text = "";

            int idTipoControl = Convert.ToInt32(ddrControles.SelectedValue);
            string TipoEstilo = ddrControles.SelectedItem.Text;
            int idTipoEstilo = Convert.ToInt32(ddrEstilos.SelectedValue);
            string Estylo = ddrEstilos.SelectedItem.Text;
            string strValor = txtValor.Text;

            switch (idTipoEstilo)
            {
                case 1:
                    strValor = txtColor.Text;
                    break;

                case 2:
                    strValor = txtColor.Text;
                    break;

                default:
                    strValor = txtValor.Text;
                    break;
            }

            if (ddrControles.SelectedValue == "")
            {
                lblmensaje.Text = "Selecciones Control";
            }
            if (idTipoEstilo == 0 && ddrControles.SelectedValue != "2")
            {
                lblmensaje.Text += ", Seleccione Estilo";
            }
            if (strValor == "" && ddrControles.SelectedValue != "2")
            {
                lblmensaje.Text += ", Digite un Valor";
            }

            if (lblmensaje.Text == "")
            {
                
                DomControlEstilos objEstilo = new DomControlEstilos();
                List<DomControlEstilos> ListControlEstilo = new List<DomControlEstilos>((List<DomControlEstilos>)Session["ControlEstilos"]);

                if (strValor != "")
                {
                    if (ListControlEstilo.Count == 0)
                    {
                        objEstilo.IdTipoControl = idTipoControl;
                        objEstilo.TipoControl = TipoEstilo;
                        objEstilo.IdStyleCss = idTipoEstilo;
                        objEstilo.NombreEstilo = Estylo;
                        objEstilo.ValorStyle = strValor;
                        ListControlEstilo.Add(objEstilo);
                        Session["ControlEstilos"] = ListControlEstilo;
                    }
                    else
                    {
                        if (!ListControlEstilo.Exists(a => a.IdTipoControl == idTipoControl && a.IdStyleCss == idTipoEstilo))
                        {
                            objEstilo.IdTipoControl = idTipoControl;
                            objEstilo.TipoControl = TipoEstilo;
                            objEstilo.IdStyleCss = idTipoEstilo;
                            objEstilo.NombreEstilo = Estylo;
                            objEstilo.ValorStyle = strValor;
                            ListControlEstilo.Add(objEstilo);
                            Session["ControlEstilos"] = ListControlEstilo;
                        }
                    }   
                }
                
                DomControlEstilos objControlAdd = ListControlEstilo.Find(p => p.IdTipoControl == idTipoControl && p.IdStyleCss == idTipoEstilo && p.ValorStyle == strValor);
                PublicayGurdar(true, objControlAdd);
            }
        }

        public void PublicayGurdar(bool Guarda, DomControlEstilos objControlEs)
        {
            try
            {
                List<DomControlEstilos> ListControlEstilo = (List<DomControlEstilos>)Session["ControlEstilos"];

                ControlEstilos objControl = new ControlEstilos();

                if (objControlEs != null)
                {
                    objControl.GuardarEliminarEstilo(objControlEs, Guarda, lblmensaje);
                }               

                if (ddrControles.SelectedValue == "2")
                {
                    DomCliente objCliente = new DomCliente();
                    objCliente.IdTipo = 1;
                    objCliente.strMensaje = txtTextMarquesina.Text;
                    objControl.GuardadMensajeConfiguracion(objCliente, lblmensaje);
                }
                
                Limpiar();

                gdEstilos.DataSource = ListControlEstilo;
                gdEstilos.DataBind();

                lblmensajeOk.Text = "Se ha guardado Con exito";
            }
            catch (Exception ex)
            {
                lblmensaje.Text = ex.Message;
            }
        }

        public void CargarMensajes()
        {
            try
            {
                Cliente objCliente = new Cliente();

                List<DomCliente> Mensajes = new List<DomCliente>(objCliente.ObtenerMensajesCliente());

                string strMensaje = "";
                foreach (DomCliente mensaje in Mensajes)
                {
                    strMensaje += mensaje.strMensaje + ".";
                }
                txtTextMarquesina.Text = strMensaje;
            }
            catch (Exception ex)
            {
                lblmensaje.Text = ex.Message;
            }
        }

        public void Limpiar()
        {
            txtTextMarquesina.Text = "";
            txtTextMarquesina.Visible = false;
            lblTextoMarquesina.Visible = false;

            ddrControles.SelectedValue = "1";
            ddrEstilos.SelectedValue = "0";
            txtValor.Text = "";
            txtColor.Text = "";
        }

        public void ActivarControlValor(bool Activo)
        {
            txtValor.Visible = Activo;
            txtColor.Visible = !Activo;

            txtValor.Text = "";
        }


        protected void gdEstilos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                string TipoControl = e.Values[0].ToString();
                string EstiloControl = e.Values[1].ToString();
                string Valor = e.Values[2].ToString();

                List<DomControlEstilos> ListControlEstilo = (List<DomControlEstilos>)Session["ControlEstilos"];

                DomControlEstilos objControlRemove = ListControlEstilo.Find(p => p.TipoControl == TipoControl && p.NombreEstilo == EstiloControl && p.ValorStyle == Valor);

                ListControlEstilo.RemoveAll(p => p.TipoControl == TipoControl && p.NombreEstilo == EstiloControl && p.ValorStyle == Valor);

                Session["ControlEstilos"] = ListControlEstilo;

                PublicayGurdar(false, objControlRemove);
            }
            catch (Exception ex)
            {
                lblmensaje.Text = ex.Message;
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void ddrControles_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddrControles.SelectedValue.Equals("2"))
            {
                lblTextoMarquesina.Visible = true;
                txtTextMarquesina.Visible = true;
                CargarMensajes();
            }
            else
            {
                lblTextoMarquesina.Visible = false;
                txtTextMarquesina.Visible = false;
                txtTextMarquesina.Text = "";
                lblmensajeOk.Text = "";
            }            
        }

        protected void ddrEstilos_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (ddrEstilos.SelectedValue)
            {
                case "1":
                    ActivarControlValor(false);
                    break;

                case "2":
                    ActivarControlValor(false);
                    break;

                default:
                    ActivarControlValor(true);
                    break;
            }
        }
    }
}