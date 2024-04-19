resource "aws_network_acl" "public" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "public-acl-${local.env_long}"
  }
}
resource "aws_network_acl_association" "public" {
  count          = length(var.public_subnets)
  network_acl_id = aws_network_acl.public.id
  subnet_id      = element(aws_subnet.public.*.id, count.index)
}

resource "aws_network_acl" "private" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "private-acl-${local.env_long}"
  }
}
resource "aws_network_acl_association" "private" {
  count          = length(var.private_subnets)
  network_acl_id = aws_network_acl.private.id
  subnet_id      = element(aws_subnet.private.*.id, count.index)
}
