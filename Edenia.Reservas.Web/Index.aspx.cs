using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Edenia.Reservas.Negocio;
using Edenia.Reservas.Comun;

namespace Edenia.Reservas.Web
{
    public partial class Index : System.Web.UI.Page
    {
        public string strListaCiudades = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlInfousuario.Visible = true;
                CargarMensajes();
                ConsultarCiudades();
                ConsultarAerolineas();
                ConfigurarEstilos();
                
            }
                     

        }

        public void ConfigurarEstilos()
        {
            ControlEstilos objControles = new ControlEstilos();
            List<DomTipoControl> ListControles = new List<DomTipoControl>(objControles.ObtenerControlesPorTipo(0, lblMensaje));
            List<DomControlEstilos> ListControlEstilo = new List<DomControlEstilos>(objControles.ObtenerControlEstilos(lblMensaje));

            List<DomControlEstilos> ListEstiloPT = new List<DomControlEstilos>();            

            if (ListControlEstilo != null && ListControlEstilo.Count > 0)
            {
                foreach (DomControlEstilos TiposC in ListControlEstilo)
                {
                    if (!ListEstiloPT.Exists(a => a.IdTipoControl.Equals(TiposC.IdTipoControl)))
                    {
                        DomControlEstilos objNew = new DomControlEstilos();
                        objNew.IdTipoControl = TiposC.IdTipoControl;
                        ListEstiloPT.Add(objNew);                        
                    }
                }

                foreach (DomControlEstilos item in ListEstiloPT)
                {                    
                    foreach (DomControlEstilos TiposC in ListControlEstilo)
                    {
                        if (item.IdTipoControl == TiposC.IdTipoControl)
                        {
                            item.ValorStyle = item.ValorStyle + TiposC.NombreEstilo + ":" + TiposC.ValorStyle + "; ";
                        }
                    }   
                }
            }

            if (ListControles != null && ListControles.Count > 0)
            {
                foreach (DomControlEstilos objTipoControl in ListEstiloPT)
                {
                    List<DomTipoControl> ListBttTipo = ListControles.FindAll(p => p.IdtipoControl == objTipoControl.IdTipoControl);
                    foreach (DomTipoControl ControlEst in ListBttTipo)
                    {
                        Control obj = FindControl(ControlEst.NombreControl);
                        if (obj.GetType() == typeof(LinkButton))
                        {
                            LinkButton link = (LinkButton)obj;
                            link.Attributes.Add("Style", objTipoControl.ValorStyle);
                        }
                        else if (obj.GetType() == typeof(Button))
                        {
                            Button btn = (Button)obj;
                            btn.Attributes.Add("Style", objTipoControl.ValorStyle);
                        }
                        else if (obj.GetType() == typeof(HtmlButton))
                        {
                            HtmlButton Hbtt = (HtmlButton)obj;
                            Hbtt.Attributes.Add("Style", objTipoControl.ValorStyle);
                        }
                        else if (obj.GetType() == typeof(Label))
                        {
                            Label label = (Label)obj;
                            label.Attributes.Add("Style", objTipoControl.ValorStyle);
                        }                        
                        else if (obj.GetType() == typeof(HtmlGenericControl))
                        {
                            HtmlGenericControl HTGC = (HtmlGenericControl)obj;
                            HTGC.Attributes.Add("Style", objTipoControl.ValorStyle);
                        }
                        else if (obj.GetType() == typeof(RadioButtonList))
                        {
                            RadioButtonList RBL = (RadioButtonList)obj;
                            RBL.Attributes.Add("Style", objTipoControl.ValorStyle);
                        }
                    }
                }
            }
        }

        public void CargarMensajes() 
        {
            try 
            {
                Cliente objCliente = new Cliente();

                List<DomCliente> Mensajes = new List<DomCliente>(objCliente.ObtenerMensajesCliente());
                 
                string strMensaje = "<MARQUEE>";
                foreach (DomCliente mensaje in Mensajes)
                {
                    strMensaje += mensaje.strMensaje + ".";
                }
                strMensaje += "</MARQUEE>";
                litTextoEmpresa.Text = strMensaje;
            }
            catch (Exception ex) { }
        }


        public void ConsultarCiudades()
        {
            try
            {
                Ciudad objCiudad = new Ciudad();

                List<DomCiudad> Ciudades = new List<DomCiudad>(objCiudad.ConsultaCiudades());

                foreach (DomCiudad ciudad in Ciudades) 
                {
                    if (ciudad.codigoAerop != "Todos")
                    {
                        strListaCiudades += ",\"" + ciudad.nombre + "( " + ciudad.codigo + " ) , " + ciudad.aeropuerto + " ( " + ciudad.codigoAerop + " ) \"";
                    }
                    else 
                    {
                        strListaCiudades += ",\"" + ciudad.nombre + "( " + ciudad.codigo + " ) \"";
                    
                    }
                }
                strListaCiudades = strListaCiudades.Remove(0, 1);



            
            }
            catch (Exception ex)
            {               
             
            }
        }

        public void ConsultarAerolineas()
        {
            try
            {
                Aerolinea objAerolineas = new Aerolinea();

                List<DomAerolineas> listAerolineas = new List<DomAerolineas>(objAerolineas.ConsultaAerolinea());

                if (listAerolineas.Count > 0)
                {
                    ddlAerolineas.DataSource = listAerolineas;
                    ddlAerolineas.DataValueField = TABLA_AEROLINEAS.ID;
                    ddlAerolineas.DataTextField = TABLA_AEROLINEAS.Nombre;
                    ddlAerolineas.DataBind();
                }
            }
            catch (Exception ex)
            {
                
            }
        }

        protected void bttBuscar_Click(object sender, EventArgs e)
        {
            Response.Redirect("VuelosNacionales.aspx");
        }

        protected void rblTipoVuelos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strValor = rblTipoVuelos.SelectedValue;

            switch (strValor)
            {
                case "soloida":
                    ControlSoloIda();
                    break;

                case "idavuelta":
                    ControlIdaVuelta(true);
                    break;

                case "multidestino":
                    vinculo.Style.Clear();
                    ControlSoloIda();
                                           
                        
                    //ControlIdaVuelta(true);
                    
                    break;

                default:

                    break;
            }
        }

        public void ControlSoloIda() 
        {
            
                    
            txtRegresoDate.Visible = false;
            lblRegreso.Visible = false;
            ddlHoraLlegada.Visible = false;
            lblHoraRegreso.Visible = false;
            txtRegresoDate.Text = "";
            ddlHoraLlegada.ClearSelection();
 
           // pnlIda.Visible = true;
         //   pnlIdaDestino.Visible = false;
        }

        public void ControlIdaVuelta(bool blValor)
        {
          //pnlIda.Visible = false;
          //  pnlIdaDestino.Visible = true;

            lblRegreso.Visible = blValor;
            txtRegresoDate.Visible = blValor;

            lblHoraRegreso.Visible = blValor;
            ddlHoraLlegada.Visible = blValor;
            lblMensaje.Text = "";

            if (!blValor)
            {
                txtRegresoDate.Text = "";
                ddlHoraLlegada.SelectedValue = "0";
            }
        }

        public void impiarForm()
        {
            lblMensaje.Text = "";
            rblTipoVuelos.SelectedValue = "idavuelta";
            txtCiudadOrigen.Text = "";
          //ddlOrigen.SelectedValue = "0";
            txtSalidaDate.Text = "";
            ddlHoraSalida.SelectedValue = "0";
            txtCiudadDestino.Text = "";
            txtRegresoDate.Text = "";
            ddlHoraLlegada.Text = "";
            ddlAdultos.SelectedValue = "1";
            ddlNiños.SelectedValue = "0";
            ddlBebes.SelectedValue = "0";
            ddlClase.SelectedValue = "0";
            ddlAerolineas.SelectedValue = "0";

            ControlIdaVuelta(true);
        }

        protected void txtSalidaDate_TextChanged(object sender, EventArgs e)
        {
            //try
            //{
            //    if (!string.IsNullOrEmpty(txtSalidaDate.Text))
            //    {
            //        string strFechaSalida = txtSalidaDate.Text;
            //        string strFechaRegreso = txtRegresoDate.Text;
            //        DateTime dtmFechaSalida = Convert.ToDateTime(strFechaSalida);
            //        DateTime dtmFechaRegreso = Convert.ToDateTime(strFechaRegreso);
            //        int Diferencia = strFechaSalida.CompareTo(strFechaRegreso);
            //        if (Diferencia > 0)
            //            lblMensaje.Text = "El regreso debe ser superior a la fecha de salida.";
            //        else
            //            lblMensaje.Text = "";
            //        if (!string.IsNullOrEmpty(strFechaRegreso))
            //        {
            //            DateTime dtmFechaRegreso = Convert.ToDateTime(txtRegresoDate.Text);
            //            int Diferencia = dtmFechaSalida.CompareTo(dtmFechaRegreso);
            //            if (Diferencia > 0)
            //              lblMensaje.Text = "El regreso debe ser superior a la fecha de salida.";
            //            else
            //            lblMensaje.Text = "";
                        
            //        } else
            //              lblMensaje.Text = "Antes de buscar seleccione la fecha de regreso.";
            //    }
               
                
                
            //}
            //catch (Exception ex)
            //{

            //}
        }

        protected void txtRegresoDate_TextChanged(object sender, EventArgs e)
        {
            //try
            //{
            //    if (!string.IsNullOrEmpty(txtRegresoDate.Text))
            //    {
            //        string strFechaSalida = txtSalidaDate.Text;
            //        string strFechaRegreso = txtRegresoDate.Text;
            //        //DateTime dtmFechaSalida = Convert.ToDateTime(strFechaSalida);
            //        //DateTime dtmFechaRegreso = Convert.ToDateTime(strFechaRegreso);
            //        int Diferencia = strFechaSalida.CompareTo(strFechaRegreso);
            //        if (Diferencia > 0)
            //            lblMensaje.Text = "El regreso debe ser superior a la fecha de salida.";
            //        else
            //            lblMensaje.Text = "";
            //        if (!string.IsNullOrEmpty(strFechaRegreso))
            //        {
            //            //DateTime dtmFechaRegreso = Convert.ToDateTime(txtRegresoDate.Text);
            //            //int Diferencia = dtmFechaSalida.CompareTo(dtmFechaRegreso);
            //            //if (Diferencia > 0)
            //            // lblMensaje.Text = "El regreso debe ser superior a la fecha de salida.";
            //            //else
            //            //    lblMensaje.Text = "";

            //        }
            //    }
            //    else

            //        lblMensaje.Text = "Antes de buscar seleccione la fecha de salida.";
            //}
            //catch (Exception ex)
            //{

            //}
        }

        protected void bttAdministrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administracion.aspx");
        }

        protected void txtCiudadOrigen_TextChanged(object sender, EventArgs e)
        {
            
        }      
    }
}