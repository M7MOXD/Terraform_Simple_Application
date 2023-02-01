resource "aws_route_table" "my_public_route" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = var.route_cidr_block
    gateway_id = aws_internet_gateway.my_igw.id
  }
  tags = {
    "Name" = "My_Public_Route"
  }
}
resource "aws_route_table" "my_private_table" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block     = var.route_cidr_block
    nat_gateway_id = aws_nat_gateway.my_nat.id
  }
  tags = {
    "Name" = "My_Private_Route"
  }
}
resource "aws_route_table_association" "my_public_route_association" {
  route_table_id = aws_route_table.my_public_route.id
  subnet_id      = aws_subnet.my_subnet["public"].id
}
resource "aws_route_table_association" "my_private_route_association" {
  route_table_id = aws_route_table.my_private_table.id
  subnet_id      = aws_subnet.my_subnet["private"].id
}