
variable "elb_sg_id" {
    description = "The security group ID for the ELB"
    type = string
}
variable "cert_arn" {
    description = "The ARN of the SSL certificate"
    type = string
}