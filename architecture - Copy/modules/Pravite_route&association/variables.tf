variable "private_subnets" {
  type = list(string)  
}
variable "vpc_id" {
  type = string
}
variable "nat_gateway_ids" {
  type = list(string)
}
variable "env" {
  type = string
}