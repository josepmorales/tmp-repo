resource "aws_instance" "myec2" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = var.instance_type
  
  tags = var.tags
  }


resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

/*
resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-west-2a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.my_subnet.id
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}*/