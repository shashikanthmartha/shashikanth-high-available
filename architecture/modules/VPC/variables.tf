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
