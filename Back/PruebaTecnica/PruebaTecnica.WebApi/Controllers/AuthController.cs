using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using PruebaTecnica.Services;
using PruebaTecnica.WebApi.Configurations;
using PruebaTecnica.WebApi.DTOs;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PruebaTecnica.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly UserManager<IdentityUser> _userAdm;
        ITokenHandlerService _service;
        public AuthController(UserManager<IdentityUser> userAdmin, ITokenHandlerService service)
        {
            _userAdm = userAdmin;
            _service = service;
        }

        [HttpPost]
        [Route("Registro")]
        public async Task<IActionResult> Registro ([FromBody] RegisterUserRequestDTO user)
        {
            if (ModelState.IsValid)
            {
                var existUser = await _userAdm.FindByEmailAsync(user.Email);
                if (existUser != null)
                {
                    return BadRequest("El correo ya existe");
                }
                var isCreated = await _userAdm.CreateAsync(new IdentityUser() { Email = user.Email, UserName = user.Email }, user.Password);
                if (isCreated.Succeeded)
                {
                    return Ok();
                }
                else 
                {
                    return BadRequest(isCreated.Errors.Select(x => x.Description).ToList());
                }

            }
            else
            {
                return BadRequest("Datos incompletos");
            }
        }

        [HttpPost]
        [Route("Login")]
        public async Task<IActionResult> Login([FromBody] LoginRequestDTO login)
        {
            if (ModelState.IsValid)
            {
                var existUser = await _userAdm.FindByEmailAsync(login.Email);
                if (existUser == null)
                {
                    return BadRequest(new LoginResponseDTO()
                    {
                        Login = false,
                        Errores = new List<string>()
                        {
                            "Usuario o contraseña errado."
                        }
                    });
                }
                var isCorrect = await _userAdm.CheckPasswordAsync(existUser, login.Password);
                if (isCorrect)
                {
                    var pars = new TokenParam()
                    {
                        Id = existUser.Id,
                        PasswordHash = existUser.PasswordHash,
                        UserName = existUser.UserName,
                    };
                    var jwtToken = _service.GenerateJwtToken(pars);
                    return Ok(new LoginResponseDTO()
                    {
                        Login = true,
                        Token = jwtToken
                    });
                }
                else
                {
                    return BadRequest(new LoginResponseDTO()
                    {
                        Login = false,
                        Errores = new List<string>()
                        {
                            "Usuario o contraseña errado."
                        }
                    });
                }
            }
            else
            {
                return BadRequest(new LoginResponseDTO()
                {
                    Login = false,
                    Errores = new List<string>()
                        {
                            "Datos incompletos."
                        }
                });
            }
        }


    }
}
