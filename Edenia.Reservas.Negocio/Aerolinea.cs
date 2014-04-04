using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Edenia.Reservas.Comun;
using Edenia.Reservas.Datos;

namespace Edenia.Reservas.Negocio
{
    public class Aerolinea
    {
        public List<DomAerolineas> ConsultaAerolinea()
        {
            DaoAerolineas objAerolinea = new DaoAerolineas();
            List<DomAerolineas> list = new List<DomAerolineas>(objAerolinea.ConsultaAerolineas());
            return list;
        }
    }
}
