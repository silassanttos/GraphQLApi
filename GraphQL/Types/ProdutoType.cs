using HotChocolate.Types;
using GraphQLApi.Models;

public class ProdutoType : ObjectType<Produto>
{
    protected override void Configure(IObjectTypeDescriptor<Produto> descriptor)
    {
        descriptor.Field(p => p.Id).Type<NonNullType<IdType>>();
        descriptor.Field(p => p.Nome).Type<NonNullType<StringType>>();
        descriptor.Field(p => p.Preco).Type<NonNullType<FloatType>>();
        descriptor.Field(p => p.QuantidadeEstoque).Type<NonNullType<IntType>>();

        descriptor.Field(p => p.Categoria).Type<CategoriaType>();
    }
}
