using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Edenia.Reservas.Comun
{
    
    public class TIPOS_CONFIGURACION 
    {
        public const int MENSAJES = 1;
        public const int ESTILOS = 2;
    }    

    #region Procedimientos Almacenados
    public class SP_CIUDAD
    {
        public const string NombreSP = "spConsultarCiudades";
    }

    public class SP_AEROLINEAS
    {
        public const string NOMBRE_SP = "spConsultaAerolineas";
    }

    public class SP_OBTENER_CONFIGURACION
    {
        public const string NOMBRE_SP = "spObtenerConfiguracion";
        public const string ID_TIPO = "@ID_TIPO";
    }

    public class SP_OBTENER_ESTILOS
    {
        public const string NOMBRE_SP = "spObtenerEstilos";
    }

    public class SP_OBTENER_TIPO_CONTROLES
    {
        public const string NOMBRE_SP = "spObtenerTipoControl";
    }

    public class SP_OBTENER_CONTROLES_POR_TIPO
    {
        public const string NOMBRE_SP = "spObtenerControlesPorTipo";
        public const string TIPO_CONTROL = "@IdTipoControl";
    }

    public class SP_OBTENER_CONTROL_ESTILO
    {
        public const string NOMBRE_SP = "spObtenerControlEstilo";        
    }

    public class SP_GUARDAR_CONTROL_ESTILO
    {
        public const string NOMBRE_SP = "spGuardarControlEstilo";
        public const string ID_TIPO_CONTROL = "@ID_TIPO_CONTROL";
        public const string ID_TIPO_ESTILO = "@ID_TIPO_ESTILO";
        public const string VALOR = "@VALOR";
        public const string GUARDAR = "@GUARDAR";
    }

    public class SP_GUARDAR_CONFIGURACION
    {
        public const string NOMBRE_SP = "spGuardarConfiguracion";
        public const string ID_TIPO = "@ID_TIPO";
        public const string MENSAJE = "@MARQUE";
    }
    #endregion


    #region Tablas
    public class TABLA_CIUDAD
    {
        public const string ID = "id";
        public const string COD_CIUDAD = "codcity";
        public const string NOM_CIUDAD = "nombre";
        public const string AEROPUERTO = "aeropuerto";
        public const string COD_AEROPUERTO = "codigo";
    }

    public class TABLA_AEROLINEAS
    {
        public const string ID = "id";
        public const string CODIGO = "codigo";
        public const string Nombre = "Nombre";
    }


    public class TABLA_CONFIGURACION 
    {
        public const string ID_CONFIGURACION = "IdConfiguracion";
        public const string ID_TIPO = "IdTipo";
        public const string TIPO = "strTipo";
        public const string MENSAJE = "strMensaje";
    }

    public class TABLA_ESTILOS
    {
        public const string ID_ESTILO  = "IdStyleCss";
        public const string NOMBRE_ESTILO = "NombreEstilo";
    }

    public class TABLA_TIPO_CONTROLES
    {
        public const string ID_TIPO_CONTROL = "IdtipoControl";
        public const string TIPO_CONTROL = "TipoControl";            
    }

    public class TABLA_CONTROL_TIPO
    {
        public const string ID_CONTROL = "IdControl";
        public const string ID_TIPO_CONTROL = "IdTipoControl";
        public const string NOMBRE_CONTROL = "NombreControl";
    }
    public class TABLA_CONTROL_ESTILO
    {
        public const string ID_CONTROL_ESTILO = "IdCOntrolStyle";
        public const string ID_ESTILO = "IdStyleCss";
        public const string ID_TIPO_CONTROL = "IdTipoControl";
        public const string VALOR_ESTILO = "ValorStyle";
        public const string NOMBRE_ESTILO = "NombreEstilo";
        public const string TIPO_CONTROL = "TipoControl";
    }
    #endregion 
}
