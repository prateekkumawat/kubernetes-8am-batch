# terraform apply -var-file=".\tfvars\prod.tfvars" -state="prod.tfstte"
aws_region = "ap-south-1"
vpc_cidr = "10.20.0.0/16"
project = "multienv-project"
env = "prod"
subnet_details = {
  "subnet1" = {
    cidr = "10.20.1.0/24"
    az = "ap-south-1a"
  }
  "subnet2" = {
    cidr = "10.20.2.0/24"
    az = "ap-south-1b"
  }
}