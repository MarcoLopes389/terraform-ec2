resource "aws_subnet" "estudos_subnet_pub_1a" {
  vpc_id                  = aws_vpc.estudos_vpc.id
  cidr_block              = cidrsubnet(aws_vpc.estudos_vpc.cidr_block, 8, 1)
  map_public_ip_on_launch = true

  tags = {
    Name = "estudos-subnet-pub-1a"
  }
}

resource "aws_subnet" "estudos_subnet_pub_1b" {
  vpc_id                  = aws_vpc.estudos_vpc.id
  cidr_block              = cidrsubnet(aws_vpc.estudos_vpc.cidr_block, 8, 2)
  map_public_ip_on_launch = true

  tags = {
    Name = "estudos-subnet-pub-1b"
  }
}