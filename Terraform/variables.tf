variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnet_cidr_public" {
    description = "Subnet CIDRS"
    type = list(string)
}
variable "subnet_cidr_private" {
    description = "Subnet CIDRS"
    type = list(string)
}
variable "subnet_cidr_batabase" {
    description = "Subnet CIDRS"
    type = list(string)
}
