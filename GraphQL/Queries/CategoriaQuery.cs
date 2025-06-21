using GraphQLApi.Data;
using GraphQLApi.Models;
using Microsoft.EntityFrameworkCore;
using HotChocolate;          
using HotChocolate.Data;     

namespace GraphQLApi.GraphQL.Queries
{
    [ExtendObjectType(Name = "Query")]
   public class CategoriaQuery
    {
        [UseFiltering]
        [UseSorting]
        public IQueryable<Categoria> GetCategorias([Service] IDbContextFactory<AppDbContext> contextFactory)
        {
            var context = contextFactory.CreateDbContext();
            return context.Categorias;
        }
    }
}
