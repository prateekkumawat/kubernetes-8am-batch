variable "aws_region" {
  description = "please define your aws region"
  type = string
}

variable "aws_access_key" {
  description = "please enter your aws access key"
  type = string
}

variable "aws_secret_key" {
  description = "please enter your aws secret key"
  type = string     
}

variable "env" {}
variable "project" {}
variable "vpc_cidr" {}
variable "subnet_cidr" {
  type = list
}
variable "subnetaz" {
  type = list
}