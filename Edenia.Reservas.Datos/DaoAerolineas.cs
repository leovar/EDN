using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Edenia.Reservas.Comun;

namespace Edenia.Reservas.Datos
{
    public class DaoAerolineas
    {
        public List<DomAerolineas> ConsultaAerolineas()
        {
            List<DomAerolineas> list = new List<DomAerolineas>();
            DatosLocal objDatos = new DatosLocal();

            DataSet dsAerolineas = objDatos.EjecutarSP(SP_AEROLINEAS.NOMBRE_SP, null);
            if (dsAerolineas.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow row in dsAerolineas.Tables[0].Rows)
                {
                    DomAerolineas obAerolineas = new DomAerolineas();
                    obAerolineas.id = Convert.ToInt32(row[TABLA_AEROLINEAS.ID].ToString());
                    obAerolineas.codigo = row[TABLA_AEROLINEAS.CODIGO].ToString();
                    obAerolineas.Nombre = row[TABLA_AEROLINEAS.Nombre].ToString();

                    list.Add(obAerolineas);
                }
            }
            return list;
        }
    }
}
