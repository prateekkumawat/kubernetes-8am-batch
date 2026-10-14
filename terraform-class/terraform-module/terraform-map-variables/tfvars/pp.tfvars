# terraform apply -var-file=".\tfvars\pp.tfvars" -state="pp.tfstate"
aws_region = "ap-south-2"
vpc_cidr = "10.10.0.0/16"
project = "multienv-project"
env = "pp"
subnet_details = {
  "subnet1" = {
    cidr = "10.10.1.0/24"
    az = "ap-south-2a"
  }
  "subnet2" = {
    cidr = "10.10.2.0/24"
    az = "ap-south-2b"
  }
}

