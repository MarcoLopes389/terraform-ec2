module "network" {
  source = "./modules/network"

  tags         = local.tags
  cidr_block   = var.cidr_block
  project_name = var.project_name
}

module "ec2" {
  source = "./modules/ec2"

  project_name  = var.project_name
  tags          = local.tags
  subnet_pub_1a = module.network.subnet_pub_1a
  vpc           = module.network.vpc
}