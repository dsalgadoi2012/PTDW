using System.Collections.Generic;

namespace PruebaTecnica.WebApi.DTOs
{
    public class LoginResponseDTO
    {
        public string Token { get; set; }
        public bool Login { get; set; }
        public List<string> Errores { get; set; }
    }
}
