variable "env" {
  description = "The environment in which the resources are deployed"   
  type = string
}
variable "rds_privatesubnets" {
  description = "The private subnets in which the RDS instance will be deployed"
  type = list(object({
    id = string
  }))
  
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
variable "vpc_id" {
  description = "The VPC ID"
  type = string
  
}