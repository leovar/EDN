using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Edenia.Reservas.Comun;
using Edenia.Reservas.Datos;

namespace Edenia.Reservas.Negocio
{
    public class ControlEstilos
    {
        public List<DomTipoControl> ObtenerTipoControl(Label lblMensaje)
        {
            List<DomTipoControl> ListTipoControl = new List<DomTipoControl>();
            try
            {
                DaoControlEstilos objControlEstilo = new DaoControlEstilos();
                ListTipoControl = objControlEstilo.ObtenerTipoControl(lblMensaje);
                return ListTipoControl;
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message;
                return ListTipoControl;
            }
        }

        public List<DomEstilos> ObtenerEstilos(Label LblMensaje)
        {
            List<DomEstilos> Estilo = new List<DomEstilos>();
            try
            {
                DaoControlEstilos objEstilo = new DaoControlEstilos();
                Estilo = objEstilo.ObtenerEstilos(LblMensaje);
                return Estilo;
            }
            catch (Exception ex)
            {
                LblMensaje.Text = ex.Message;
                return Estilo;
            }
        }

        public List<DomTipoControl> ObtenerControlesPorTipo(int intTipoControl, Label LblMensaje)
        {
            List<DomTipoControl> ListControlePorTipo = new List<DomTipoControl>();
            try
            {
                DaoControlEstilos ObjControles = new DaoControlEstilos();
                ListControlePorTipo = ObjControles.ObtenerControlesPorTipo(intTipoControl, LblMensaje);
                return ListControlePorTipo;
            }
            catch (Exception ex)
            {
                LblMensaje.Text = ex.Message;
                return ListControlePorTipo;
            }
        }

        public List<DomControlEstilos> ObtenerControlEstilos(Label LblMensaje)
        {
            List<DomControlEstilos> ListEstilos = new List<DomControlEstilos>();
            try
            {
                DaoControlEstilos objEstilo = new DaoControlEstilos();
                ListEstilos = objEstilo.ObtenerControlEstilos(LblMensaje);
                return ListEstilos;
            }
            catch (Exception ex)
            {
                LblMensaje.Text = ex.Message;
                return ListEstilos;
            }
        }

        public bool GuardarEliminarEstilo(DomControlEstilos objControl, bool Guardar, Label LblMensaje)
        {
            try
            {
                DaoControlEstilos objControlEstilo = new DaoControlEstilos();
                bool blResult = objControlEstilo.GuardarEliminarEstilo(objControl, Guardar, LblMensaje);
                return blResult;
            }
            catch (Exception ex)
            {
                LblMensaje.Text = ex.Message;
                return false;
            }
        }

        public void GuardadMensajeConfiguracion(DomCliente Cliente, Label LblMensaje)
        {
            DaoControlEstilos objControlEstilos = new DaoControlEstilos();
            objControlEstilos.GuardadMensajeConfiguracion(Cliente, LblMensaje);            
        }
    }
}
