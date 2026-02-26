output "aws_rds_instance_id" {
  value = aws_db_instance.instance1.id  
}

output "aws_rds_instance_name" {
  value = aws_db_instance.instance1.identifier
}

output "aws_rds_instance_endpoint" {
  value = aws_db_instance.instance1.endpoint
}