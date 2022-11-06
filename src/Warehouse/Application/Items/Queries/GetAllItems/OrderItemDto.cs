﻿using Application.Common.Mappings;
using Domain.Entities;

namespace Application.Items.Queries.GetAllItems;

public sealed class OrderItemDto : IMapFrom<Item>
{
    public Guid Id { get; set; }
    public string Name { get; set; }
    public int Count { get; set; }
}