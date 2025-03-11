provider "aws" {
  region = "us-east-1"
}

module "network" {
  source = "./modules/network"

  vpc_id             = var.vpc_id
  vpc_cidr           = "10.0.0.0/16"
  availability_zones = ["us-east-1a", "us-east-1b"]
}

module "server1" {
  source = "./modules/server"

  vpc_id        = var.vpc_id
  subnet_id     = module.network.public_subnet_ids[0]
  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = "server1"
}

module "server2" {
  source = "./modules/server"

  vpc_id        = var.vpc_id
  subnet_id     = module.network.public_subnet_ids[1]
  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = "server2"
}