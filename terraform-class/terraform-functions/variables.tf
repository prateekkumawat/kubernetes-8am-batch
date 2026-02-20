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
variable "dynameic_ingress_rules" {
  type = map(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}