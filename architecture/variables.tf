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

variable "local_ssm_policies" {
  description = "The policies to attach to the SSM role"
  type        = map(string)
  
}
variable "ami_id" {
  description = "The AMI ID to use for the launch template"
  type        = string  
  
}
variable "instance_type" {
  description = "The instance type to use for the launch template"
  type        = string
  
}
variable "auto_private_subnets" {
  description = "The private subnets to use for the launch template"
  type        = list(object({
    id = string
  }))
  
}
variable "auto_public_subnets" {
  description = "The public subnets to use for the launch template"
  type        = list(object({
    id = string
  }))
  
}
variable "vpc_id" {
  description = "The VPC ID to use for the launch template"
  type        = string
  
}
variable "aws_acm_certificate_cert_arn" {
  description = "The ARN of the ACM certificate to use for the ALB"
  type        = string  
  
}
variable "alb_sg_ingress_rules" {
    type=any
}
variable "alb_sg_egress_rules" {
  type = any
}
variable "user_data" {
  description = "The user data to use for the launch template"
  type        = object({
    rendered = string
  })
  
}
variable "ec2_sg_ingress_rules" {
  type = any
  
}
variable "ec2_sg_egress_rules" {
  type = any
  
}