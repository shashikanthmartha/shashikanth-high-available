variable "env" {
  description = "The environment for the resources"
    type        = string
}
variable "app_alb_arn" {
  description = "The ARN of the ALB to associate the WAF with"
  type        = string
  
}