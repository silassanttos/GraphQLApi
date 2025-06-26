using GraphQLApi.Data;
using GraphQLApi.Models;
using Microsoft.EntityFrameworkCore;

namespace GraphQLApi.GraphQL.Queries
{
<<<<<<< HEAD
    [ExtendObjectType(Name = "Query")]
    public class ClienteQuery
    {
        [UseProjection]
        [UseFiltering]
        [UseSorting]

        public async Task<IQueryable<Cliente>> GetClientesAsync([Service] IDbContextFactory<AppDbContext> contextFactory)
        {
            var context = contextFactory.CreateDbContext();
            return await Task.FromResult(context.Clientes);
        }

    }
=======
  
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
>>>>>>> develop
}
