using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Edenia.Reservas.Comun;

namespace Edenia.Reservas.Datos
{
    public class DaoCliente
    {
        public List<DomCliente> ObtenerConfiguracion(int strIdTipo)
        {


            SqlParameter[] sqlParameters1 = new SqlParameter[] 
            { 
                new SqlParameter(SP_OBTENER_CONFIGURACION.ID_TIPO, strIdTipo) 
            };
		
            List<DomCliente> list = new List<DomCliente>();
            DatosLocal objDatos = new DatosLocal();

            DataSet dsCliente = objDatos.EjecutarSP(SP_OBTENER_CONFIGURACION.NOMBRE_SP, sqlParameters1);
            if (dsCliente.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dsCliente.Tables[0].Rows)
                {
                    DomCliente obCliente = new DomCliente();
                    obCliente.IdConfiguracion = Convert.ToInt32(row[TABLA_CONFIGURACION.ID_CONFIGURACION].ToString());
                    obCliente.IdTipo = Convert.ToInt32(row[TABLA_CONFIGURACION.ID_TIPO].ToString());
                    obCliente.strMensaje= row[TABLA_CONFIGURACION.MENSAJE].ToString();
                    obCliente.strTipo = row[TABLA_CONFIGURACION.TIPO].ToString();


                    list.Add(obCliente);
                }
            }
            return list;
        }
    }
}
