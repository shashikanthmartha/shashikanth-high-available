resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id


  tags = {
    Name = "${var.env}-igw"
  }
}

resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "${var.env}-public-rtb"
  }
}

resource "aws_route_table_association" "public" {
  for_each = var.public_subnets

  subnet_id      = each.value.id
  route_table_id = aws_route_table.public.id
}
