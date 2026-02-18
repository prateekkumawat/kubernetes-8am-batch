output "instance_public_ip" {
  value = aws_instance.ins1.public_ip
}

output "instnace_private_ip" {
  value = aws_instance.ins1.private_ip
}

output "instance_private_dns" {
  value = aws_instance.ins1.private_dns
}

output "instance_public_dns" {
  value = aws_instance.ins1.public_dns
}   


output "instance2_public_ip" {
  value = aws_instance.ins2.public_ip
}

output "instnace2_private_ip" {
  value = aws_instance.ins2.private_ip
}

output "instance2_private_dns" {
  value = aws_instance.ins2.private_dns
}

output "instance2_public_dns" {
  value = aws_instance.ins2.public_dns
}   