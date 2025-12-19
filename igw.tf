resource "aws_internet_gateway" "estudos_igw" {
  vpc_id = aws_vpc.estudos_vpc.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-igw"
    }
  )
}