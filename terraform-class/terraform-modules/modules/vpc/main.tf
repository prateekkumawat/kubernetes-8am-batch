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
  map_public_ip_on_launch = true
    tags = {
        Name = "${var.project}-${var.env}-subnet1"
    }
}

resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_details["subnet2"].cidr
  availability_zone = var.subnet_details["subnet2"].az
  map_public_ip_on_launch = true
    tags = {
        Name = "${var.project}-${var.env}-subnet2"
    }           
}   

resource "aws_subnet" "subnet3" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_details["subnet3"].cidr
  availability_zone = var.subnet_details["subnet3"].az
    tags = {
        Name = "${var.project}-${var.env}-subnet3"
    }           
}  

resource "aws_subnet" "subnet4" {
  vpc_id = aws_vpc.this1.id
  cidr_block = var.subnet_details["subnet4"].cidr
  availability_zone = var.subnet_details["subnet4"].az
    tags = {
        Name = "${var.project}-${var.env}-subnet4"
    }           
} 

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this1.id
  tags = {
    Name = "${var.project}-${var.env}-igw"        
}
}

resource "aws_route_table" "publicrt" {
  vpc_id = aws_vpc.this1.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "${var.project}-${var.env}-publicrt"     
}
}

resource "aws_route_table_association" "subnet1assoc" {
  subnet_id = aws_subnet.subnet1.id
  route_table_id = aws_route_table.publicrt.id
}

resource "aws_route_table_association" "subnet2assoc" {
  subnet_id = aws_subnet.subnet2.id
  route_table_id = aws_route_table.publicrt.id   
}