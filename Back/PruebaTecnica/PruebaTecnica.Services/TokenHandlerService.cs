using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using PruebaTecnica.Abstractions;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace PruebaTecnica.Services
{
    public interface ITokenHandlerService
    {
        string GenerateJwtToken(ITokenParam param);
    }

    public class TokenHandlerService : ITokenHandlerService
    {
        private readonly JwtConfig _jwtConfig;


        public TokenHandlerService(IOptionsMonitor<JwtConfig> optionsMonitor)
        {
            _jwtConfig = optionsMonitor.CurrentValue;
        }

        public string GenerateJwtToken(ITokenParam param)
        {
            var jwtTokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(_jwtConfig.Secret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[]
                {
                    new Claim("Id", param.Id),
                    new Claim(JwtRegisteredClaimNames.Sub,param.UserName),
                    new Claim(JwtRegisteredClaimNames.Email, param.UserName)
                }),
                Expires = DateTime.UtcNow.AddYears(5),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha512Signature)
            };

            var token = jwtTokenHandler.CreateToken(tokenDescriptor);
            var jwtToken = jwtTokenHandler.WriteToken(token);
            return jwtToken;

        }
    }
}
