resource "aws_vpc" "this1" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "${var.project}-${var.env}-vpc"
  }
}

resource "aws_subnet" "public1" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_cidr[0]
  availability_zone = var.subnetaz[0]
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.project}-${var.env}-pub-subnet1-az1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_cidr[1]
  availability_zone = var.subnetaz[1]
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.project}-${var.env}-pub-subnet2-az2"
  }
}

resource "aws_subnet" "private1" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_cidr[2]
  availability_zone = var.subnetaz[0]
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.project}-${var.env}-priv-subnet1-az1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_cidr[3]
  availability_zone = var.subnetaz[1]
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.project}-${var.env}-priv-subnet2-az2"
  }
}

resource "aws_subnet" "dssubnet1" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_cidr[4]
  availability_zone = var.subnetaz[0]
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.project}-${var.env}-ds-subnet1-az1"
  }
}

resource "aws_subnet" "dssubnet2" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_cidr[5]
  availability_zone = var.subnetaz[1]
  map_public_ip_on_launch = false
  tags = {
    Name = "${var.project}-${var.env}-ds-subnet2-az2"
  }
}