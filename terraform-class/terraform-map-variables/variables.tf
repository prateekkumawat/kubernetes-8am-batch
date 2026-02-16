variable "aws_region" {
  description = "please define your aws region"
  type = string
}
variable "env" {}
variable "project" {}
variable "vpc_cidr" {}
variable "subnet_details" {
  type = map(object({
    cidr = string
    az   = string
  }))
}