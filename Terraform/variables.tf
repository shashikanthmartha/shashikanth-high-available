variable "vpc_cidr" {
  description = "VPC CIDR Range"
  type = string
}

variable "subnet_cidr_public" {
    description = "Subnet public CIDRS"
    type = list(string)
}
variable "subnet_cidr_web_private" {
    description = "Subnet private CIDRS"
    type = list(string)
}
variable "subnet_cidr_app_private" {
    description = "Subnet private CIDRS"
    type = list(string)
}
variable "subnet_cidr_database" {
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
variable "web_instance_type" {
  description = "The instance type"
  type = string
}
variable "web_AMI" {
  description = "The AMI ID"
  type = string
}
#app
variable "app_instance_type" {
  description = "The instance type"
  type = string
}
variable "app_AMI" {
  description = "The AMI ID"
  type = string
}
variable "aws_autoscaling_group_name_web" {
  description = "The name of the autoscaling group _web"
  type = string
}
variable "aws_autoscaling_group_name_app" {
  description = "The name of the autoscaling group to attach the ELB to"
  type        = string  
  
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