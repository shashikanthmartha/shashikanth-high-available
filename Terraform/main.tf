module "vpc" {
  source = "./modules/VPC"
  vpc_cidr = var.vpc_cidr
  subnet_cidr_public = var.subnet_cidr_public
  subnet_cidr_private = var.subnet_cidr_private
  subnet_cidr_batabase = var.subnet_cidr_batabase
}
