using GraphQLApi.Models;
using Microsoft.EntityFrameworkCore;

namespace GraphQLApi.Data
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

        public DbSet<Categoria> Categorias { get; set; }
        public DbSet<Produto> Produtos { get; set; }
       // public DbSet<Cliente> Clientes { get; set; }
      //  public DbSet<Venda> Vendas { get; set; }
      //  public DbSet<ItemVenda> ItensVenda { get; set; }
    }
}
