using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Edenia.Reservas.Comun
{
    public class DomControlEstilos
    {
        public int IdControlStyle { get; set; }   
        public int IdTipoControl { get; set; }
        public string TipoControl { get; set; }
        public int IdStyleCss { get; set; }
        public string ValorStyle { get; set; }
        public string NombreEstilo { get; set; }
    }
}
