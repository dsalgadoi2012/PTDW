using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using PruebaTecnica.Entities;

namespace PruebaTecnica.DataAccess
{
    public class ApiDbContext : IdentityDbContext
    {
        public DbSet<Cliente> Cliente { get; set; }
        public DbSet<Factura> Factura { get; set; }
        public DbSet<Producto> Producto { get; set; }

        public ApiDbContext(DbContextOptions<ApiDbContext> options): base(options)
        {

        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Ignore<Entity>();
            modelBuilder.Entity<Cliente>()
                .Property(b => b.FechaCreacion)
                .HasDefaultValueSql("getdate()");
            modelBuilder.Entity<Producto>()
                .Property(b => b.FechaCreacion)
                .HasDefaultValueSql("getdate()");


            base.OnModelCreating(modelBuilder);
        }
    }
}
