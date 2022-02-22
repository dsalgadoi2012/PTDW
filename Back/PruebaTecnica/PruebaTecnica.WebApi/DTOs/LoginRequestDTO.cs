﻿using System.ComponentModel.DataAnnotations;

namespace PruebaTecnica.WebApi.DTOs
{
    public class LoginRequestDTO
    {
        [Required]
        public string Email { get; set; }
        [Required]
        public string Password { get; set; }
    }
}
