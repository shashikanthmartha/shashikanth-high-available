variable "elb_app" {
  description = "The name of the ELB to associate with the autoscaling group"
  type        = string
}
variable "autoscaling_group_name_app" {
  description = "The name of the autoscaling group to attach the ELB to"
  type        = string  
  
}