using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Edenia.Reservas.Comun;

namespace Edenia.Reservas.Datos
{
    public class DaoControlEstilos
    {
        public List<DomTipoControl> ObtenerTipoControl(Label lblMensaje)
        {
            List<DomTipoControl> List = new List<DomTipoControl>();
            try
            {   
                DatosLocal objDatos = new DatosLocal();
                DataSet dsTipoControl = objDatos.EjecutarSP(SP_OBTENER_TIPO_CONTROLES.NOMBRE_SP, null);
                if (dsTipoControl.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow row in dsTipoControl.Tables[0].Rows)
                    {
                        DomTipoControl TipoControl = new DomTipoControl();
                        TipoControl.IdtipoControl = Convert.ToInt32(row[TABLA_TIPO_CONTROLES.ID_TIPO_CONTROL].ToString());
                        TipoControl.TipoControl = row[TABLA_TIPO_CONTROLES.TIPO_CONTROL].ToString();
                        List.Add(TipoControl);
                    }
                    return List;
                }
                return List;

            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message;
                return List;
            }
        }

        public List<DomEstilos> ObtenerEstilos(Label LblMensaje)
        {
            List<DomEstilos> List = new List<DomEstilos>();
            try
            {   
                DatosLocal objDatos = new DatosLocal();
                DataSet dsDatos = objDatos.EjecutarSP(SP_OBTENER_ESTILOS.NOMBRE_SP, null);
                if (dsDatos.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow row in dsDatos.Tables[0].Rows)
                    {
                        DomEstilos Estilo = new DomEstilos();
                        Estilo.IdStyleCss = Convert.ToInt32(row[TABLA_ESTILOS.ID_ESTILO].ToString());
                        Estilo.NombreEstilo = row[TABLA_ESTILOS.NOMBRE_ESTILO].ToString();
                        List.Add(Estilo);
                    }
                    return List;
                }
                return List;
            }
            catch (Exception ex)
            {
                LblMensaje.Text = ex.Message;
                return List;
            }
        }

        public List<DomTipoControl> ObtenerControlesPorTipo(int intTipoControl, Label LblMensaje)
        {
            List<DomTipoControl> ListControles = new List<DomTipoControl>();
            try
            {
                SqlParameter[] objParameter = 
                {
                    new SqlParameter(SP_OBTENER_CONTROLES_POR_TIPO.TIPO_CONTROL, intTipoControl)
                };
                
                DatosLocal objDatos = new DatosLocal();
                DataSet dsDatos = objDatos.EjecutarSP(SP_OBTENER_CONTROLES_POR_TIPO.NOMBRE_SP, objParameter);

                if (dsDatos.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow row in dsDatos.Tables[0].Rows)
                    {
                        DomTipoControl Control = new DomTipoControl();
                        Control.IdControl = Convert.ToInt32(row[TABLA_CONTROL_TIPO.ID_CONTROL].ToString());
                        Control.IdtipoControl = Convert.ToInt32(row[TABLA_CONTROL_TIPO.ID_TIPO_CONTROL].ToString());
                        Control.NombreControl = row[TABLA_CONTROL_TIPO.NOMBRE_CONTROL].ToString();
                        ListControles.Add(Control);
                    }
                    return ListControles;
                }
                return ListControles;               
            }
            catch (Exception ex)
            {
                LblMensaje.Text = ex.Message;
                return ListControles;                
            }
        }

        public List<DomControlEstilos> ObtenerControlEstilos(Label LblMensaje)
        {
            List<DomControlEstilos> ListEstilos = new List<DomControlEstilos>();
            try
            {                
                DatosLocal objDatos = new DatosLocal();

                DataSet dsDatos = objDatos.EjecutarSP(SP_OBTENER_CONTROL_ESTILO.NOMBRE_SP, null);

                if (dsDatos.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow row in dsDatos.Tables[0].Rows)
                    {
                        DomControlEstilos ControlEstilo = new DomControlEstilos();
                        ControlEstilo.IdControlStyle = Convert.ToInt32(row[TABLA_CONTROL_ESTILO.ID_CONTROL_ESTILO].ToString());
                        ControlEstilo.IdStyleCss = Convert.ToInt32(row[TABLA_CONTROL_ESTILO.ID_ESTILO].ToString());
                        ControlEstilo.IdTipoControl = Convert.ToInt32(row[TABLA_CONTROL_ESTILO.ID_TIPO_CONTROL].ToString());
                        ControlEstilo.ValorStyle = row[TABLA_CONTROL_ESTILO.VALOR_ESTILO].ToString();
                        ControlEstilo.NombreEstilo = row[TABLA_CONTROL_ESTILO.NOMBRE_ESTILO].ToString();
                        ControlEstilo.TipoControl = row[TABLA_CONTROL_ESTILO.TIPO_CONTROL].ToString();
                        ListEstilos.Add(ControlEstilo);
                    }
                    return ListEstilos;
                }
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
                SqlParameter[] objParametro = 
                {
                    new SqlParameter(SP_GUARDAR_CONTROL_ESTILO.ID_TIPO_CONTROL, objControl.IdTipoControl)
                    ,new SqlParameter(SP_GUARDAR_CONTROL_ESTILO.ID_TIPO_ESTILO, objControl.IdStyleCss)
                    ,new SqlParameter(SP_GUARDAR_CONTROL_ESTILO.VALOR, objControl.ValorStyle)
                    ,new SqlParameter(SP_GUARDAR_CONTROL_ESTILO.GUARDAR, Guardar)
                };

                DatosLocal objDatos = new DatosLocal();
                objDatos.EjecutarSP(SP_GUARDAR_CONTROL_ESTILO.NOMBRE_SP, objParametro);

                return true;
            }
            catch (Exception ex)
            {
                LblMensaje.Text = ex.Message;
                return false;
            }
        }

        public void GuardadMensajeConfiguracion(DomCliente Cliente, Label LblMensaje)
        {
            try
            {
                SqlParameter[] objParemetro = 
                {
                    new SqlParameter(SP_GUARDAR_CONFIGURACION.ID_TIPO, Cliente.IdTipo),
                    new SqlParameter(SP_GUARDAR_CONFIGURACION.MENSAJE, Cliente.strMensaje)
                };

                DatosLocal objDatos = new DatosLocal();

                objDatos.EjecutarSP(SP_GUARDAR_CONFIGURACION.NOMBRE_SP, objParemetro);
            }
            catch (Exception ex)
            {
                LblMensaje.Text = ex.Message;
            }
        }
    }
}
