using System.ComponentModel.DataAnnotations;

namespace PruebaTecnica.WebApi.DTOs
{
    public class ProductoDto
    {
        [Required]
        public string Nombre { get; set; }
        [Required]
        public int Cantidad { get; set; }
        [Required]
        public float Precio { get; set; }
        public bool Estado { get; set; }

    }
}

