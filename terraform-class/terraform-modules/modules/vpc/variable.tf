variable "aws_region" {}
variable "env" {}
variable "project" {}
variable "vpc_cidr" {}
variable "subnet_details" {
  type = map(object({
    cidr = string
    az   = string
  }))
}