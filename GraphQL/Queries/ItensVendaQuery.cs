using GraphQLApi.Data;
using GraphQLApi.Models;
using Microsoft.EntityFrameworkCore;

namespace GraphQLApi.GraphQL.Queries
{
    public class ItensVendaQuery
    {
        [UseProjection]
        [UseFiltering]
        [UseSorting]
        public IQueryable<ItensVenda> GetItemVendas([Service] IDbContextFactory<AppDbContext> contextFactory)
        {
            var context = contextFactory.CreateDbContext();
            return context.ItensVendas.Include(iv => iv.Produto);
        }
    }
}
