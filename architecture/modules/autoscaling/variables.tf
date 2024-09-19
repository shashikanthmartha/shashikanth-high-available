variable "env" {
  description = "The environment in which the resources are created"
  type        = string
  
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