
resource "aws_eip" "nat" {
  for_each = var.public_subnets
}

resource "aws_nat_gateway" "nat" {
  for_each = aws_eip.nat

  allocation_id = each.value.id
  subnet_id     = var.public_subnets[each.key]

  tags = {
    Name = "${var.env}-nat-gateway-${each.key}"
  }
}
