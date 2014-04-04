using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace Edenia.Reservas.Datos
{
    public class DatosLocal
    {
         public string _strConexion;
        public string Conexion
        {
            get
            {
                return _strConexion;
            }
            set
            {
                _strConexion = value;
            }
        }

        public DatosLocal()
        {            
            Conexion = System.Configuration.ConfigurationSettings.AppSettings["conexion"];           
        }

        /// <summary>
        /// Ejecuta el procedimiento almacenado con los parametros definidos
        /// </summary>
        /// <param name="strNombreSP"></param>
        /// <param name="arrParam"></param>
        /// <returns></returns>
        public DataSet EjecutarSP(string strNombreSP, SqlParameter[] arrParam)
        {
            SqlConnection objCon = new SqlConnection(Conexion);

            if (objCon.State == ConnectionState.Closed)
            {
                objCon.Open();
            }

            SqlCommand objComando = new SqlCommand(strNombreSP, objCon);
            objComando.CommandType = CommandType.StoredProcedure;

            if (arrParam != null)
            {
                foreach (SqlParameter objParametro in arrParam)
                {
                    objComando.Parameters.Add(objParametro);
                }
            }

            SqlDataAdapter objDatos = new SqlDataAdapter(objComando);
            DataSet dtsDatos = new DataSet("Datos");
            objDatos.Fill(dtsDatos);
            objCon.Close();
            return dtsDatos;
        }

        public DataSet EjecutarSSQL(string strComandText)
        {
            SqlConnection objCon = new SqlConnection(Conexion);

            if (objCon.State == ConnectionState.Closed)
            {
                objCon.Open();
            }

            SqlCommand objComando = new SqlCommand(strComandText, objCon);
            objComando.CommandType = CommandType.Text;

            SqlDataAdapter objDatos = new SqlDataAdapter(objComando);
            DataSet dtsDatos = new DataSet("Datos");
            objDatos.Fill(dtsDatos);
            objCon.Close();
            return dtsDatos;
        }
    }
}
