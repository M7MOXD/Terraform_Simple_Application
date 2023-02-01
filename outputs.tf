output "public_ec2_ip" {
  value = aws_instance.my_ec2["public"].public_ip
}
output "private_ec2_ip" {
  value = aws_instance.my_ec2["private"].private_ip
}