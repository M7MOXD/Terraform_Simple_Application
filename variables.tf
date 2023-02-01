variable "vpc_cidr_block" {
  description = "Variable for VPC Cidr Block"
  type        = string
}
variable "route_cidr_block" {
  description = "Variable for Route Cidr Block"
  type        = string
}
variable "subnet" {
  description = "Variable for Subnet"
  type        = map(any)
}
variable "ec2" {
  description = "Variables for EC2"
  type        = map(any)
}