using System.ComponentModel.DataAnnotations;

namespace PruebaTecnica.WebApi.DTOs
{
    public class RegisterUserRequestDTO
    {
        [Required]
        public string Email{ get; set; }
        [Required]
        public string Password { get; set; }
        [Required]
        public string Name { get; set; }
    }
}
