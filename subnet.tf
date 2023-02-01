resource "aws_subnet" "my_subnet" {
  for_each                = var.subnet
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = each.value["cidr_block"]
  map_public_ip_on_launch = each.value["public_ip"]
  tags = {
    Name = each.value["description"]
  }
}