provider "aws" {
  region = var.region
}


module "vpc" {
  source             = "./vpc"
  cidr               = "192.64.0.0/16"
  bastian_subnet     = "192.64.1.0/24"
  frontend_subnet    = "192.64.2.0/24"
  backend_subnet     = "192.64.3.0/24"
  availability_zone  = "us-east-1a"
  vpc_name           = "arjun-vpc"
  ssh_cidr           = ["55.67.4.5/32"]
}

module "ec2" {
  source                       = "./ec2"
  ami_id                       = "ami-08f3d892de259504d"
  instance_type                = "t3.medium"
  key_name                     = "arjun-key"
  volume_size                  = 20
  bastian_subnet               = module.vpc.bastian_subnet
  frontend_subnet              = module.vpc.frontend_subnet
  backend_subnet               = module.vpc.backend_subnet
  bastian_security_group       = module.vpc.bastian_sg
  frontend_security_group      = module.vpc.frontend_sg
  backend_security_group       = module.vpc.backend_sg
}