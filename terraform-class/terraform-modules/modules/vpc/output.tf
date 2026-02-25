output "vpc_id" {
  value = aws_vpc.this1.id
}
output "subnet1_id" {
  value = aws_subnet.subnet1.id
}
output "subnet2_id" {
  value = aws_subnet.subnet2.id
}
output "subnet3_id" {
  value = aws_subnet.subnet3.id
}
output "subnet4_id" {
  value = aws_subnet.subnet4.id
}
output "igw_id" {
  value = aws_internet_gateway.igw.id
}
