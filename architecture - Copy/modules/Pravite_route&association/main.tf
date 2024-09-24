resource "aws_route_table" "private" {
  count = length(var.private_subnets)

  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.nat_gateway_ids[count.index]
  }

  tags = {
    Name = "${var.env}-private-route-table-${count.index}"
  }
}

resource "aws_route_table_association" "private" {
 count = length(var.private_subnets)

  subnet_id      = var.private_subnets[count.index]
  route_table_id = aws_route_table.private[count.index].id
}
