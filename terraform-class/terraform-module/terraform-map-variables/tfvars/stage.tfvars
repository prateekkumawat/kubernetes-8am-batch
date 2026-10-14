#terraform apply -var-file=".\tfvars\stage.tfvars" -state="stage.tfstate"
aws_region = "ap-south-1"
vpc_cidr = "10.0.0.0/16"
project = "terraform-project"
env = "stage"
subnet_details = {
  "subnet1" = {
    cidr = "10.0.1.0/24"
    az = "ap-south-1a"
  }
  "subnet2" = {
    cidr = "10.0.2.0/24"
    az = "ap-south-1b"
  }
}