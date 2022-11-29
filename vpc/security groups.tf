resource "aws_security_group" "default-sg" {
  name        = "Jenkins"
  description = "SG para o Jenkins"
  vpc_id      = aws_vpc.carlos2.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Jenkins"
  }
}

resource "aws_security_group" "nodes" {
  name        = "nodes"
  description = "SG para os nodes"
  vpc_id      = aws_vpc.carlos.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  ingress {
    from_port   = 30301
    to_port     = 30301
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  ingress {
    from_port   = 30302
    to_port     = 30302
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  ingress {
    from_port   = 30303
    to_port     = 30303
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  ingress {
    from_port   = 30304
    to_port     = 30304
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["179.98.129.28/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "nodes"
  }
}