namespace GraphQLApi.Models
{
    public class Venda
    {
        public int Id { get; set; }
        public DateTime DataVenda { get; set; }
        public decimal ValorTotal { get; set; }

        public int ClienteId { get; set; }
        public Cliente Cliente { get; set; } = default!;

        public ICollection<ItensVenda> ItensVenda { get; set; } = new List<ItensVenda>();
    }
}
