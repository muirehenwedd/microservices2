namespace Application.Items.Queries.GetAllItems;

public sealed class GetAllItemsQueryResult
{
    public IList<OrderItemDto> Items { get; set; }
}