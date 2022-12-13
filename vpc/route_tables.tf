#VPC 1
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.carlos.id

  tags = var.route1_table_tags
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.carlos.id

  tags = var.route1_table_tags
}

resource "aws_route" "public_internet_gateway" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ig.id
}

resource "aws_route" "private_nat_gateway" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat.id
}

resource "aws_route_table_association" "public" {
  count          = length(var.subnet_cidrs_public)
  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
  count          = length(var.subnet_cidrs_private)
  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = aws_route_table.private.id
}

#VPC 2
resource "aws_route_table" "public2" {
  vpc_id = aws_vpc.carlos2.id

  tags = var.route1_table_tags
}

resource "aws_route_table" "private2" {
  vpc_id = aws_vpc.carlos2.id

  tags = var.route1_table_tags
}

resource "aws_route" "public_internet_gateway2" {
  route_table_id         = aws_route_table.public2.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.ig2.id
}

resource "aws_route" "private_nat_gateway2" {
  route_table_id         = aws_route_table.private2.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat2.id
}

resource "aws_route_table_association" "public2" {
  count          = length(var.subnet_cidrs_public2)
  subnet_id      = element(aws_subnet.public2.*.id, count.index)
  route_table_id = aws_route_table.public2.id
}

resource "aws_route_table_association" "private2" {
  count          = length(var.subnet_cidrs_private2)
  subnet_id      = element(aws_subnet.private2.*.id, count.index)
  route_table_id = aws_route_table.private2.id
}
