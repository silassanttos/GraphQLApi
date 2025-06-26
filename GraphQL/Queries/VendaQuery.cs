using GraphQLApi.Data;
using GraphQLApi.Models;
using Microsoft.EntityFrameworkCore;

namespace GraphQLApi.GraphQL.Queries
{
    public class VendaQuery
    {

        [UseProjection]
        [UseFiltering]
        [UseSorting]
        public IQueryable<Venda> GetVendas([Service] IDbContextFactory<AppDbContext> contextFactory)
        {
            var context = contextFactory.CreateDbContext();
            return context.Vendas.Include(v => v.Cliente).Include(v => v.ItensVenda);
        }
    }
}
}
