


variable "launch_template_version" {
  description = "The version of the launch template"
  type = string
}

variable "vpc_zone_identifier" {
  description = "The VPC zone identifier"
  type = list(string)
  
}
variable "web_elb_name" {
  description = "The name of the ELB"
  type = string
}
variable "launch_template_id" {
  description = "The ID of the launch template"
  type = string
  
}