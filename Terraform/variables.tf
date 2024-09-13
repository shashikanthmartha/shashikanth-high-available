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
#RDS variables
variable "cluster_identifier" {
  description = "The name of the RDS cluster"
  type = string
   
}

variable "engine" {
  description = "The name of the database engine to be used for this DB cluster"
  type = string
  
}
variable "engine_version" {
  description = "The database engine version"
  type = string
   
}

variable "database_name" {
    description = "The name for your database"
    type = string
    
}
variable "master_username" {
    description = "The master username"
    type = string
     
}
variable "master_password" {
    description = "The master password"
    type = string
 
}
