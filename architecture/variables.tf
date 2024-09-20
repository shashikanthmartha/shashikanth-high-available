variable "env" {
  description = "The environment name"
  type = string
}
variable "cidr" {
  description = "The CIDR block for the VPC"
  type = string
  
}
variable "instance_tenancy" {
  description = "The tenancy of the instance"
  type = string
  
}
variable "enable_dns_support" {
  description = "Enable DNS support"
  type = bool
}
variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames"
  type = bool
}
variable "public_subnets" {
  description = "Map of public subnets"
  type = map(string)
}
variable "private_subnets" {
  description = "Map of private subnets"
  type = map(string)
}
variable "rds_conf" {
  type    = any
  default = {}
}
variable "rds_sg_ingress_rules" {
  type = any
}
variable "rds_sg_egress_rules" {
  type = any
}


variable "ami_id" {
  description = "The AMI ID to use for the launch template"
  type        = string  
  
}
variable "instance_type" {
  description = "The instance type to use for the launch template"
  type        = string
  
}



variable "alb_sg_ingress_rules" {
    type=any
}
variable "alb_sg_egress_rules" {
  type = any
}

variable "ec2_sg_ingress_rules" {
  type = any
  
}
variable "ec2_sg_egress_rules" {
  type = any
  
}
