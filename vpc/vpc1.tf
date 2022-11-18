resource "aws_vpc" "carlos" {
  cidr_block = "10.1.0.0/16"

  tags = var.vpc1_tags
}

resource "aws_vpc" "carlos2" {
  cidr_block = "10.2.0.0/16"

  tags = var.vpc2_tags
}
