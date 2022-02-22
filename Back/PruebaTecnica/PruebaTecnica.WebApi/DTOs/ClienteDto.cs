using System.ComponentModel.DataAnnotations;

namespace PruebaTecnica.WebApi.DTOs
{
    public class ClienteDto
    {
        [Required]
        public string Nombre { get; set; }
        [Required]
        public string Documento { get; set; }
        [Required]
        public int Edad { get; set; }
        public bool Estado { get; set; }

    }
}

