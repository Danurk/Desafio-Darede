resource "aws_eip" "nat_eip" {
  vpc        = true
  depends_on = [aws_internet_gateway.ig]
}

resource "aws_eip" "nat_eip2" {
  vpc        = true
  depends_on = [aws_internet_gateway.ig2]
}