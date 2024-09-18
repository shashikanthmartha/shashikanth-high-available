variable "security_groups" {
    description = "The security groups for the ELB"
    type = list(string)
}

  
variable "subnet_app_private" {
    description = "The subnet ID for the private subnet"
    type = list(string)
  
}