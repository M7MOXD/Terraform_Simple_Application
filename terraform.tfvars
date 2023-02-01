vpc_cidr_block   = "10.0.0.0/16"
route_cidr_block = "0.0.0.0/0"
subnet = {
  public : {
    cidr_block : "10.0.0.0/24"
    public_ip : true
    description : "My_Public_Subnet"
  }
  private : {
    cidr_block : "10.0.1.0/24"
    public_ip : false
    description : "My_Private_Subnet"
  }
}
ec2 = {
  public : {
    instance_type : "t2.micro"
    public_ip : true
    description : "My_Public_EC2"
  }
  private : {
    instance_type : "t2.micro"
    public_ip : false
    description : "My_Private_EC2"
  }
}