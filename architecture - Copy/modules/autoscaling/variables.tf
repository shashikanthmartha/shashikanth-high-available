variable "env" {
  description = "The environment in which the resources are created"
  type        = string
  
}
variable "local_ssm_policies" {
  description = "The policies to attach to the SSM role"
  type        = list(string)
  
}
variable "ami_id" {
  description = "The AMI ID to use for the launch template"
  type        = string  
  
}
variable "instance_type" {
  description = "The instance type to use for the launch template"
  type        = string
  
}
variable "auto_public_subnets" {
  description = "List of public subnet IDs for the load balancer"
  type        = list(string)
}

variable "auto_private_subnets" {
  description = "List of private subnet IDs for the launch template"
  type        = list(string)
  
}
variable "vpc_id" {
  description = "The VPC ID to use for the launch template"
  type        = string
  
}
variable "aws_acm_certificate_cert_arn" {
  description = "The ARN of the ACM certificate to use for the ALB"
  type        = string  
  
}

variable "user_data" {
  description = "The user data to use for the launch template"
  type        = object({
    rendered = string
  })
  
}
# variable "alb_sg_ingress_rules" {
#   description = "List of ingress rules for the ALB security group"
#   type = list(object({
#     from_port       = number
#     to_port         = number
#     protocol        = string
#     cidr_blocks     = list(string)
#     security_groups = optional(list(string), [])
#   }))
# }

# variable "alb_sg_egress_rules" {
#   description = "List of egress rules for the ALB security group"
#   type = list(object({
#     from_port       = number
#     to_port         = number
#     protocol        = string
#     cidr_blocks     = list(string)
#     security_groups = optional(list(string), [])
#   }))
# }
# variable "ec2_sg_ingress_rules" {
#   description = "value"
#   type = list(object({
#     from_port       = number
#     to_port         = number
#     protocol        = string
#     cidr_blocks     = list(string)
#     security_groups = optional(list(string), [])
#   }))
  
# }
# variable "ec2_sg_egress_rules" {
#   type = list(object({
#     from_port       = number
#     to_port         = number
#     protocol        = string
#     cidr_blocks     = list(string)
#     security_groups = optional(list(string), [])
#   }))
# }
