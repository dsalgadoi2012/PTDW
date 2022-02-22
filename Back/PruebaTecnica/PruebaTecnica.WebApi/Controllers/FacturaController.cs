using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using PruebaTecnica.Aplication;
using PruebaTecnica.Entities;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;

namespace PruebaTecnica.WebApi.Controllers
{
    [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
    [Route("api/[controller]")]
    [ApiController]
    public class FacturaController : ControllerBase
    {
        IAplication<Factura> _factura;
        public FacturaController(IAplication<Factura> factura)
        {
            _factura = factura;
        }
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_factura.GetAll());
        }
    }
}
