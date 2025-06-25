namespace GraphQLApi.Models
{
    public class ItemVenda
    {
        public int Id { get; set; }
        public int Quantidade { get; set; }
        public decimal PrecoUnitario { get; set; }

        public int ProdutoId { get; set; }
        public Produto Produto { get; set; } = default!;

        public int VendaId { get; set; }
        public Venda Venda { get; set; } = default!;
        
        
    }
}
