
# Example for the production environment

module "infra-network" {
  source = "../../modules/infra-network"

  env                = var.env
  region             = var.region
  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  create_nat_gateway = var.create_nat_gateway
  repo_tags          = var.repo_tags
  env_tags           = var.env_tags
}
