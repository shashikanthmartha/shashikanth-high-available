variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnet_cidr_public" {
    description = "Subnet public CIDRS"
    type = list(string)
}
variable "subnet_cidr_private" {
    description = "Subnet private CIDRS"
    type = list(string)
}
variable "subnet_cidr_batabase" {
    description = "Subnet database CIDRS"
    type = list(string)
}

