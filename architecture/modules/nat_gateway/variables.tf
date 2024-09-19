variable "public_subnets" {
  description = "Map of public subnets"
  type = map(string)
}
variable "env" {
  type = string
}