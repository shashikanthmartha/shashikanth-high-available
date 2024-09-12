
resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr
    tags = {
      "Name" = "my_vpc"
    }
}


resource "aws_subnet" "public" {
 count = length(var.subnet_cidr_public)
  vpc_id = aws_vpc.main.id
  cidr_block = cidrsubnet(aws_vpc.main.cidr_block, 4, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_names_public[count.index]
  }
}

resource "aws_subnet" "private" {
  count = length(var.subnet_cidr_private)
  vpc_id = aws_vpc.main.id
  cidr_block = cidrsubnet(aws_vpc.main.cidr_block, 4, count.index + 2)
  availability_zone = element(data.aws_availability_zones.available.names, count.index % 2)
  tags = {
    Name = var.subnet_names_private[count.index]
  }
}

resource "aws_subnet" "database" {
  count = length(var.subnet_cidr_batabase)
  vpc_id = aws_vpc.main.id
  cidr_block = cidrsubnet(aws_vpc.main.cidr_block, 4, count.index + 6)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)
  tags = {
    Name = var.subnet_names_database[count.index]
  }
}
