resource "aws_vpc" "this1" {
  cidr_block = var.vpc_cidr
  instance_tenancy = "default"
  tags = {
    Name = "${var.project}-${var.env}-vpc"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_details["subnet1"].cidr
  availability_zone = var.subnet_details["subnet1"].az
    tags = {
        Name = "${var.project}-${var.env}-subnet1"
    }
}

resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_details["subnet2"].cidr
  availability_zone = var.subnet_details["subnet2"].az
    tags = {
        Name = "${var.project}-${var.env}-subnet2"
    }           
  
}   