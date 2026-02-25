resource "tls_private_key" "key-pair-generator" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "key1" {
  key_name   = "${var.project}-${var.env}-${key_name}"
  public_key = tls_private_key.key-pair-generator.public_key_openssh  
}

resource "local_file" "private-key" {
  content  = tls_private_key.key-pair-generator.private_key_pem
  filename = "${var.project}-${var.env}-${key_name}"
}