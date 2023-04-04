module "vpc" {
  source = "git::https://github.com/camilaqueiroz-mck/modules//vpc_module"
  env = var.env
  vpc_cidr_block = var.vpc_cidr_block
  azs = var.azs
  subnet_public_cidr_blocks = var.subnet_public_cidr_blocks
  subnet_private_cidr_blocks = var.subnet_private_cidr_blocks
}

# # module "eks" {
# #   source = "git::https://github.com/camilaqueiroz-mck/modules//eks_module"
# #   env = var.env
# #   subnets_private_ids = module.vpc.private_subnet_id
# # }

module "rds" {
  source = "git::https://github.com/camilaqueiroz-mck/modules//rds_module"
  env = var.env
  private_subnet_ids = module.vpc.private_subnet_id
  vpc_id = module.vpc.vpc_id
  db_username = var.db_username
  db_password = var.db_password
  eks_sec_group_id = module.eks.eks_sec_group_id
}

# # module "ecr" {
# #   source = "git::https://github.com/camilaqueiroz-mck/modules//ecr_module"
# #   name = var.name
# # }