resource "aws_eip" "nat" {
  count = var.create_nat_gateway ? length(var.public_subnets) : 0
  domain = "vpc"
  tags = {
    Name = "nat-eip-${element(var.availability_zones, count.index)}-${local.env_long}"
  }
}

resource "aws_nat_gateway" "main" {
  count         = var.create_nat_gateway ? length(var.public_subnets) : 0
  subnet_id     = element(aws_subnet.public.*.id, count.index)
  allocation_id = aws_eip.nat[count.index].id

  tags = {
    Name = "nat-gateway-${element(var.availability_zones, count.index)}-${local.env_long}"
  }
}
