namespace Application.DeliveryQueryItems.Queries.GetDeliveryQuery;

public sealed class DeliveryQueryDto
{
    public DeliveryQueryDto()
    {
        DeliveryQuery = new List<DeliveryQueryItemDto>();
    }

    public IList<DeliveryQueryItemDto> DeliveryQuery { get; set; }
}