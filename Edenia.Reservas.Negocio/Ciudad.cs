using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Edenia.Reservas.Comun;
using Edenia.Reservas.Datos;

namespace Edenia.Reservas.Negocio
{
    public class Ciudad
    {
        public List<DomCiudad> ConsultaCiudades()
        {
            DaoCiudad objCiudad = new DaoCiudad();
            List<DomCiudad> list = new List<DomCiudad>(objCiudad.ConsultarCiudades());
            return list;
        }
    }
}
