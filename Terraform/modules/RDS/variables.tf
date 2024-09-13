  default = "mysql"
}
variable "engine_version" {
  description = "The database engine version"
  type = string
  default = "5.7.19"
}
variable "availability_zones" {
  description = "The availability zones"
  type = list(string)
}
variable "database_name" {
  description = "The name for your database"
  type = string
  default = "mydb"
}
variable "master_username" {
  description = "The master username"
  type = string
  default = "admin"
}
variable "master_password" {
  description = "The master password"
  type = string
  default = "password"
  
}
