resource "aws_eip" "my_eip" {
  vpc = true
  depends_on = [
    aws_internet_gateway.my_igw
  ]
  tags = {
    "Name" = "My_EIP"
  }
}