using GraphQLApi.Data;
using GraphQLApi.Models;
using Microsoft.EntityFrameworkCore;
using HotChocolate;
using HotChocolate.Data;

namespace GraphQLApi.GraphQL.Queries
{
    [ExtendObjectType(Name = "Query")]
    public class ProdutoQuery
    {
        [UseProjection]
        [UseFiltering]
        [UseSorting]
        public IQueryable<Produto> GetProdutos([Service] IDbContextFactory<AppDbContext> contextFactory)
        {
            var context = contextFactory.CreateDbContext();
            return context.Produtos.Include(p => p.Categoria);
        }
    }
}
