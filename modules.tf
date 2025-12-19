module "network" {
  source = "./modules/network"

  tags         = local.tags
  cidr_block   = var.cidr_block
  project_name = var.project_name
}