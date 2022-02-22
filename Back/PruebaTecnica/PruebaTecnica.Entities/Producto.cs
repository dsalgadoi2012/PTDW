
using System;

namespace PruebaTecnica.Entities
{
    public class Producto : Entity
    {
        public string Nombre { get; set; }
        public int Cantidad { get; set; }
        public float Precio { get; set; }
        public bool Estado { get; set; }
        public DateTime FechaCreacion { get; set; }

    }
}
