using HotChocolate.Types;
using GraphQLApi.Models; 

public class CategoriaType : ObjectType<Categoria>
{
    protected override void Configure(IObjectTypeDescriptor<Categoria> descriptor)
    {
        descriptor.Field(c => c.Id).Type<NonNullType<IdType>>();
        descriptor.Field(c => c.Nome).Type<NonNullType<StringType>>();
    }
}
