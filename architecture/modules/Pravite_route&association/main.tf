resource "aws_route_table" "private" {
  for_each = var.private_subnets

  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.nat_gateway_ids[each.key].id
  }

  tags = {
    Name = "${var.env}-private-route-table-${each.key}"
  }
}

resource "aws_route_table_association" "private" {
  for_each = var.private_subnets

  subnet_id      = each.value.id
  route_table_id = aws_route_table.private[each.key].id
}
