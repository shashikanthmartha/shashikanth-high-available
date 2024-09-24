
resource "aws_eip" "nat" {
  count = length(var.public_subnets)
}

resource "aws_nat_gateway" "nat" {
 
  count = length(var.public_subnets)

  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = var.public_subnets[count.index]

  tags = {
    Name = "${var.env}-nat-gateway-${count.index}"
  }
}
