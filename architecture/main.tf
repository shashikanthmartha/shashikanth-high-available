module "vpc" {
    source = "./modules/VPC"
    env = var.env
    cidr = var.cidr
    instance_tenancy = var.instance_tenancy
    enable_dns_support = var.enable_dns_support
    enable_dns_hostnames = var.enable_dns_hostnames
    public_subnets = var.public_subnets
    private_subnets = var.private_subnets
}
module "nat_gateway" {
    source = "./modules/nat_gateway"
    public_subnets = module.vpc.public_subnets
    env = var.env
}
module "private_route_table" {
    source = "./modules/private_route_table"
    private_subnets = var.private_subnets
    env = var.env
    nat_gateway_ids = module.nat_gateway.nat_gateway_ids
}
module "public_route_table" {
    source = "./modules/public_RT_RTA_IGW"
    public_subnets = module.vpc.public_subnets
    env = var.env
    vpc_id = module.vpc.vpc_id
}
module "rdssg" {
    source = "./modules/RDS"
    env = var.env
    rds_sg_ingress_rules = var.rds_sg_ingress_rules
    rds_sg_egress_rules = var.rds_sg_egress_rules
    vpc_id = module.vpc.vpc_id
    rds_privatesubnets = module.vpc.private_subnets
}
module "efs" {
    source = "./modules/efs"
    env = var.env
    efs_private_subnets = module.vpc.private_subnets
    vpc_id = module.vpc.vpc_id
    ec2_sg_id = module.rdssg.rds_sg_id
}
data "template_file" "user_data" {
  template = file("./templates/user_data.tpl")
  vars = {
  efs_file_system_id = module.efs.efs_file_system_id
  }
}
module "rout53" {
    source = "./modules/ROUTE_53"
    app_alb_dns_name=module.auto_scaling.app_alb_dns_name
    app_alb_zone_id=module.auto_scaling.app_alb_zone_id
}

module "auto_scaling" {
    source = "./modules/autoscaling"
    env = var.env
    local_ssm_policies = local.ssm_policies
    ami_id = var.ami_id
    instance_type = var.instance_type
    auto_private_subnets = module.vpc.private_subnets
    auto_public_subnets = module.vpc.public_subnets
    vpc_id = module.vpc.vpc_id
    aws_acm_certificate_cert_arn = var.aws_acm_certificate_cert_arn#mdules.rout53
    alb_sg_ingress_rules = var.alb_sg_ingress_rules
    alb_sg_egress_rules = var.alb_sg_egress_rules
    user_data = data.template_file.user_data
    ec2_sg_ingress_rules = var.ec2_sg_ingress_rules
    ec2_sg_egress_rules = var.ec2_sg_egress_rules
}
module "waf" {
 source = "./modules/WAF"
 env = var.env
 app_alb_arn = module.auto_scaling.app_alb_arn
}
