resource "aws_vpc" "this1" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "terraform-use-learncode-vpc"
  }
}

resource "aws_subnet" "public1" {
  vpc_id = aws_vpc.this1.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "terraform-use-learncode-pub-subnet1-az1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id = aws_vpc.this1.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = true
  tags = {
    Name = "terraform-use-learncode-pub-subnet2-az2"
  }
}

resource "aws_subnet" "private1" {
  vpc_id = aws_vpc.this1.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "terraform-use-learncode-priv-subnet1-az1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id = aws_vpc.this1.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "terraform-use-learncode-priv-subnet2-az2"
  }
}

resource "aws_subnet" "dssubnet1" {
  vpc_id = aws_vpc.this1.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = false
  tags = {
    Name = "terraform-use-learncode-ds-subnet1-az1"
  }
}

resource "aws_subnet" "dssubnet2" {
  vpc_id = aws_vpc.this1.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "ap-south-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "terraform-use-learncode-ds-subnet2-az2"
  }
}