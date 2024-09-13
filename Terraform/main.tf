module "vpc" {
  source = "./modules/VPC"
  vpc_cidr = var.vpc_cidr
  subnet_cidr_public = var.subnet_cidr_public
  subnet_cidr_private = var.subnet_cidr_private
  subnet_cidr_batabase = var.subnet_cidr_batabase
}
module "name" {
  source = "./modules/RDS"
  cluster_identifier = var.cluster_identifier
  engine = var.engine
  engine_version = var.engine_version
  availability_zones = module.vpc.database_subnets
  database_name = var.database_name
  master_username = var.master_username
  master_password = var.master_password
}
