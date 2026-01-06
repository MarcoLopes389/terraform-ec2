data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "aws_ec2_instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  subnet_id     = var.subnet_pub_1a

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ec2"
    }
  )
}