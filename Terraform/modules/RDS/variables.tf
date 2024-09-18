variable "cluster_identifier" {
  description = "The name of the RDS cluster"
  type = string
  default = "my-cluster"
}
variable "engine" {
  description = "The name of the database engine to be used for this DB cluster"
  type = string
  default = "mysql"
}
variable "engine_version" {
  description = "The database engine version"
  type = string
  default = "8.0.35"
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
variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  type = string
}
variable "db_security_group_ids" {
  description = "A list of VPC security group IDs to associate with the DB cluster"
  type = list(string)
}
variable "allocated_storage"  { 
  description = "The amount of storage to allocate for the DB cluster"
  type = number
  default = 20
}
variable "storage_type" {
  description = "The storage type to be associated with the DB cluster"
  type = string
  default = "gp2"
}
variable "db_instance_class" {
  description = "The instance class to use for the DB cluster"
  type = string
  default = "db.t3.xlarge"
}
variable "multi_az" {
  description = "Specifies if the DB cluster is multi-AZ"
  type = bool
  default = false
}
variable "publicly_accessible" {
  description = "Specifies if the DB cluster is publicly accessible"
  type = bool
  default = false 
}
variable "backup_retention_period"{
  description = "The number of days to retain backups for"
  type = number
  default = 7
}