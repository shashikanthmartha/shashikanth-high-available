variable "private_subnets" {
  type = map(string)    
}
variable "vpc_id" {
  type = string
}
variable "nat_gateway_ids" {
  type = map(object({
    id = string
  }))
  
}
variable "env" {
  type = string
}