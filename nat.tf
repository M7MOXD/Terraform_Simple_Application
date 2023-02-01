resource "aws_nat_gateway" "my_nat" {
  subnet_id     = aws_subnet.my_subnet["public"].id
  allocation_id = aws_eip.my_eip.id
  tags = {
    "Name" = "My_NAT"
  }
}