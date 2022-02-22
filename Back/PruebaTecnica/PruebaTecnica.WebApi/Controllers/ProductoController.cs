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
    public class ProductoController : ControllerBase
    {
        IAplication<Producto> _producto;
        public ProductoController(IAplication<Producto> producto)
        {
            _producto = producto;
        }
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_producto.GetAll());
        }

        [HttpPost]
        public IActionResult Save(ProductoDto dto)
        {
            var f = new Producto()
            {
                Nombre = dto.Nombre,
                Cantidad = dto.Cantidad,
                Precio = dto.Precio,
                Estado = true
            };
            
            return Ok(_producto.Save(f));
        }
        [HttpDelete]
        public IActionResult Delete(int id)
        {
            if (id == 0) return NotFound();

            _producto.DeleteById(id);
            return Ok();
        }

        [HttpPut]
        [Route("{id}")]
        public IActionResult Update(int id, ProductoDto dto)
        {
            if (id == 0 || dto == null) return NotFound();
            var tmp = _producto.GetById(id);
            if (tmp == null) return NotFound();
            else
            {
                tmp.Nombre = dto.Nombre;
                tmp.Cantidad = dto.Cantidad;
                tmp.Precio = dto.Precio;
                tmp.Estado = dto.Estado;
            }
            _producto.SaveChanges(tmp);
            return Ok(tmp);
        }
    }
}
