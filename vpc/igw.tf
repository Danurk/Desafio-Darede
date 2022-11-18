resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.carlos.id

  tags = var.igw1_tags
}

resource "aws_internet_gateway" "ig2" {
  vpc_id = aws_vpc.carlos2.id

  tags = var.igw1_tags
}