variable "vpc_id" {
  description = "The VPC ID"
  type = string
}
variable "ec2_sg_id" {
  description = "The security group ID of the EC2 instance"
  type = list(string)
  
}