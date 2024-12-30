module "private-instances-subnet" {
  source              = "./modules/aws-private-subnet"
  name                = "private-instances-subnet"
  vpc_id              = module.main-vpc.vpc_id
  availability_zone   = "eu-west-3a"
  cidr_block          = var.private_instances_subnet_cidr
  public_subnet_id    = module.bastions-subnet.subnet_id
  has_internet_access = true
  tags = {
    kind = "private"
  }
}

module "private-instances" {
  source          = "./modules/aws-node"
  server_count    = var.private_instances_count
  server_prefix   = "private"
  ami_id          = "ami-0546127e0cf2c6498"
  instance_type   = "t2.micro"
  vpc_id          = module.main-vpc.vpc_id
  subnet_id       = module.private-instances-subnet.subnet_id
  private_ips     = [["192.168.16.11"], ["192.168.16.12"], ["192.168.16.13"]]
  create_key      = false
  security_groups = [module.sg-admin.sg_id]
  user_data_file  = ".config/cloudinit_user_data.yaml"
  tags = {
    kind = "private"
  }
}
