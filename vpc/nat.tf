
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = element(aws_subnet.public.*.id, 0)
  depends_on    = [aws_internet_gateway.ig]
  tags = {
    Name = "nat"
  }
}

resource "aws_nat_gateway" "nat2" {
  allocation_id = aws_eip.nat_eip2.id
  subnet_id     = element(aws_subnet.public2.*.id, 0)
  depends_on    = [aws_internet_gateway.ig2]
  tags = {
    Name = "nat2"
  }
}
