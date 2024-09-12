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
variable "subnet_names_public" {
    description = "Subnet names"
    type = list(string)
    default = [ "PublicSubnet1", "PublicSubnet2" ]
}
variable "subnet_names_private" {
    description = "Subnet names"
    type = list(string)
    default = [ "privateSubnet1", "privateSubnet2" ]
}
variable "subnet_names_database" {
    description = "Subnet names"
    type = list(string)
    default = [ "DBSubnet1", "DBSubnet2" ]
}
