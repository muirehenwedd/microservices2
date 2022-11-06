using Application.Common.Models;
using Application.DeliveryQueryItems.Queries.GetDeliveryQueryWithPagination;
using Microsoft.AspNetCore.Mvc;

namespace WebApi.Controllers;

public sealed class QueryController : ApiControllerBase
{
    [HttpGet("paginated")]
    public async Task<ActionResult<PaginatedList<DeliveryQueryItemDto>>> GetItemsWithPagination(
        [FromQuery] GetDeliveryQueryWithPaginationQuery query
    )
    {
        return await Mediator.Send(query);
    }
}