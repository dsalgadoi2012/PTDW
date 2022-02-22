
using System;

namespace PruebaTecnica.Entities
{
    public class Cliente : Entity
    {
        public string Nombre { get; set; }
        public string Documento { get; set; }
        public int Edad { get; set; }
        public bool Estado { get; set; }
        public DateTime FechaCreacion { get; set; }

    }
}
