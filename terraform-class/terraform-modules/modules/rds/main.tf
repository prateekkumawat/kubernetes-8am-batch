resource "aws_db_subnet_group" "subnet_group1" {
  name       = "${var.project}-${var.env}-db-subnet-group"
  subnet_ids = var.subnet_ids
  tags = {
    Name = "${var.project}-${var.env}-db-subnet-group"
  }
}

resource "aws_db_instance" "instance1" {
  identifier = "${var.project}-${var.env}-db-instance1"
  allocated_storage = var.allocated_storage
  engine = var.engiename
  engine_version = var.engine_version
  instance_class = var.instance_class
  username = var.username
  password = var.password
  db_subnet_group_name = aws_db_subnet_group.subnet_group1.name
  skip_final_snapshot = true
  vpc_security_group_ids = [var.db_security_group_id]
}