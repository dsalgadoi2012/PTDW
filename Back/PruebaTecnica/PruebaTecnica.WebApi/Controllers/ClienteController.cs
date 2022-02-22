using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PruebaTecnica.Aplication;
using PruebaTecnica.Entities;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using System.Threading.Tasks;
using PruebaTecnica.WebApi.DTOs;

namespace PruebaTecnica.WebApi.Controllers
{
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    [Route("api/[controller]")]
    [ApiController]
    public class ClienteController : ControllerBase
    {
        IAplication<Cliente> _cliente;
        public ClienteController(IAplication<Cliente> cliente)
        {
            _cliente = cliente;
        }
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_cliente.GetAll());
        }

        [HttpPost]
        public IActionResult Save(ClienteDto dto)
        {
            var f = new Cliente()
            {
                Nombre = dto.Nombre,
                Documento = dto.Documento,
                Edad = dto.Edad,
                Estado = true
            };
            
            return Ok(_cliente.Save(f));
        }
        [HttpDelete]
        public IActionResult Delete(int id)
        {
            if (id == 0) return NotFound();

            _cliente.DeleteById(id);
            return Ok();
        }

        [HttpPut]
        [Route("{id}")]
        public IActionResult Update(int id, ClienteDto dto)
        {
            if (id == 0 || dto == null) return NotFound();
            var tmp = _cliente.GetById(id);
            if (tmp == null) return NotFound();
            else
            {
                tmp.Documento = dto.Documento;
                tmp.Edad = dto.Edad;
                tmp.Estado = dto.Estado;
                tmp.Nombre = dto.Nombre;
            }
            _cliente.SaveChanges(tmp);
            return Ok(tmp);
        }
    }
}
