variable "web_instance_type" {
  description = "The instance type"
  type = string
}
variable "web_AMI" {
  description = "The AMI ID"
  type = string
}
variable "security_groups" {
  description = "value of security group"
  type = list(string)
}
variable "iam_instance_profile_name" {
  description = "The name of the IAM instance profile"
  type = string
  
}
variable "web_private" {
  description = "The private subnet"
  type = map(object({
    id = string
  }))
  
}
variable "data" {
  description = "The data to be rendered"
  type = object({
    rendered = string
  })
}