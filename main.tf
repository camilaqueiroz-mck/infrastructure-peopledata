module "vpc" {
  source = "git::https://github.com/camilaqueiroz-mck/vpc_module.git"
  env = var.env
  vpc_cidr_block = var.vpc_cidr_block
  azs = var.azs
  subnet_public_cidr_blocks = var.subnet_public_cidr_blocks
  subnet_private_cidr_blocks = var.subnet_private_cidr_blocks
}