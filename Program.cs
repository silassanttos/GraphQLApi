using GraphQLApi;
using GraphQLApi.Data;
using GraphQLApi.GraphQL.Queries;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddPooledDbContextFactory<AppDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

builder.Services
    .AddGraphQLServer()
    .AddQueryType(d => d.Name("Query"))
    .AddTypeExtension<CategoriaQuery>()
    .AddTypeExtension<ClienteQuery>()
    .AddTypeExtension<ItemVendaQuery>()
    .AddTypeExtension<ProdutoQuery>()
    .AddTypeExtension<VendaQuery>()
    
    .AddType<CategoriaType>()
    .AddType<ProdutoType>()
    .AddProjections()
    .AddFiltering()
    .AddSorting();


var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
}



app.MapGet("/", () => Results.Redirect("/graphql"));
app.MapGraphQL();
app.Run();
