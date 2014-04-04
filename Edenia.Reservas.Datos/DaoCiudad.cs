using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Edenia.Reservas.Comun;

namespace Edenia.Reservas.Datos
{
    public class DaoCiudad
    {
        public List<DomCiudad> ConsultarCiudades()
        {
            List<DomCiudad> list = new List<DomCiudad>();
            DatosLocal objDatos = new DatosLocal();

            DataSet dsCiudades = objDatos.EjecutarSP(SP_CIUDAD.NombreSP, null);
            if (dsCiudades.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dsCiudades.Tables[0].Rows)
                {
                    DomCiudad obCiudad = new DomCiudad();
                    obCiudad.id = Convert.ToInt32(row[TABLA_CIUDAD.ID].ToString());
                    obCiudad.codigo = row[TABLA_CIUDAD.COD_CIUDAD].ToString();
                    obCiudad.nombre = row[TABLA_CIUDAD.NOM_CIUDAD].ToString();
                    obCiudad.codigoAerop = row[TABLA_CIUDAD.COD_AEROPUERTO].ToString();
                    obCiudad.aeropuerto = row[TABLA_CIUDAD.AEROPUERTO].ToString();
                    list.Add(obCiudad);
                }                
            }            
            return list;
        }
    }
}
