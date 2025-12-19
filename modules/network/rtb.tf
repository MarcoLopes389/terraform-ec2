resource "aws_route_table" "estudos_rtb" {
  vpc_id = aws_vpc.estudos_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.estudos_igw.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-rtb"
    }
  )
}

resource "aws_route_table_association" "estudos_rtb_1a" {
  subnet_id      = aws_subnet.estudos_subnet_pub_1a.id
  route_table_id = aws_route_table.estudos_rtb.id
}

resource "aws_route_table_association" "estudos_rtb_1b" {
  subnet_id      = aws_subnet.estudos_subnet_pub_1b.id
  route_table_id = aws_route_table.estudos_rtb.id
}