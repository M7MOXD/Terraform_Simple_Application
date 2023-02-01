resource "aws_instance" "my_ec2" {
  for_each                    = var.ec2
  ami                         = data.aws_ami.my_ami.id
  instance_type               = each.value["instance_type"]
  subnet_id                   = aws_subnet.my_subnet[each.key].id
  associate_public_ip_address = each.value["public_ip"]
  vpc_security_group_ids      = [aws_security_group.my_sg.id]
  key_name                    = aws_key_pair.my_key.key_name
  user_data                   = <<-EOF
  #!/bin/bash
  sudo apt update
  sudo apt install nginx -y
  EOF
  tags = {
    "Name" = each.value["description"]
  }
}