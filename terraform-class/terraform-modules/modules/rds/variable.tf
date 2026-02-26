variable "aws_region" {}
variable "env" {}
variable "project" {}
variable "subnet_ids" {
  type = list(string)
}
variable "allocated_storage" {}
variable "engiename" {}
variable "engine_version" {}    
variable "instance_class" {}
variable "username" {}
variable "password" {}
variable "db_security_group_id" {}