using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Edenia.Reservas.Comun;
using Edenia.Reservas.Datos;

namespace Edenia.Reservas.Negocio
{
    public class Cliente
    {
        public List<DomCliente> ObtenerMensajesCliente()
        {
            DaoCliente objCliente = new DaoCliente();
            List<DomCliente> list = new List<DomCliente>(objCliente.ObtenerConfiguracion(TIPOS_CONFIGURACION.MENSAJES));
            return list;
        }

        public List<DomCliente> ObtenerEstilosCliente()
        {
            DaoCliente objCliente = new DaoCliente();
            List<DomCliente> list = new List<DomCliente>(objCliente.ObtenerConfiguracion(TIPOS_CONFIGURACION.ESTILOS));
            return list;
        }
    }
}
