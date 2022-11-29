#VPC 1
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.carlos.id
  count                   = length(var.subnet_cidrs_public)
  cidr_block              = element(var.subnet_cidrs_public, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name                                   = "public-subnet"
    "kubernetes.io/role/elb"               = "1"
    "kubernetes.io/cluster/carlos-cluster" = "owned"
  }
}

resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.carlos.id
  count                   = length(var.subnet_cidrs_private)
  cidr_block              = element(var.subnet_cidrs_private, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet"
  }
}

resource "aws_subnet" "db_subnet" {
  vpc_id                  = aws_vpc.carlos.id
  count                   = length(var.subnet_cidrs_db)
  cidr_block              = element(var.subnet_cidrs_db, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = false
  tags = {
    "Name" = "db-subnet"
  }
}

resource "aws_db_subnet_group" "database" {
  name       = "main"
  subnet_ids = aws_subnet.db_subnet.*.id
  tags = {
    "Name" = "Database subnet group"
  }
}

#VPC 2
resource "aws_subnet" "public2" {
  vpc_id                  = aws_vpc.carlos2.id
  count                   = length(var.subnet_cidrs_public2)
  cidr_block              = element(var.subnet_cidrs_public2, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "private2" {
  vpc_id                  = aws_vpc.carlos2.id
  count                   = length(var.subnet_cidrs_private2)
  cidr_block              = element(var.subnet_cidrs_private2, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = false
  tags = {
    Name = "private-subnet"
  }
}

resource "aws_subnet" "db_subnet2" {
  vpc_id                  = aws_vpc.carlos2.id
  count                   = length(var.subnet_cidrs_db2)
  cidr_block              = element(var.subnet_cidrs_db2, count.index)
  availability_zone       = element(var.availability_zones, count.index)
  map_public_ip_on_launch = false
  tags = {
    "Name" = "db-subnet"
  }
}

resource "aws_db_subnet_group" "database2" {
  name       = "main2"
  subnet_ids = aws_subnet.db_subnet2.*.id
  tags = {
    "Name" = "Database subnet group"
  }
}