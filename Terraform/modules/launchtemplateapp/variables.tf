variable "app_instance_type" {
  description = "The instance type"
  type = string
}
variable "app_AMI" {
  description = "The AMI ID"
  type = string
}

variable "iam_instance_profile_name" {
  description = "The name of the IAM instance profile"
  type = string
  
}
variable "security_groups" {

  description = "List of security group IDs"

  type        = list(string)

}
variable "app_private" {
  description = "List of private subnet IDs"
  type        = list(object({
    id = string
  }))
  
}
variable "data" {
  description = "The data to be rendered"
  type = object({
    rendered = string
  })
  
}