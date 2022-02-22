using PruebaTecnica.Abstractions;

namespace PruebaTecnica.WebApi.Configurations
{
    public class TokenParam : ITokenParam
    {
        public string UserName { get; set; }
        public string PasswordHash { get; set; }
        public string Id { get; set; }
    }
}
