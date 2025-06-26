using GraphQLApi.Data;
using GraphQLApi.Models;
using Microsoft.EntityFrameworkCore;

namespace GraphQLApi.GraphQL.Queries
{
  
    [ExtendObjectType(Name = "Query")]
    public class ClienteQuery
        {
            [UseProjection]
            [UseFiltering]
            [UseSorting]
            public IQueryable<Cliente> GetClientes([Service] IDbContextFactory<AppDbContext> contextFactory)
            {
                var context = contextFactory.CreateDbContext();
                return context.Clientes;
            }
        }
}
