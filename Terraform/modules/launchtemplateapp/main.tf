
resource "aws_launch_template" "app_lt" {
  name_prefix   = "app-lt-"
  image_id      = var.app_AMI
  instance_type = var.app_instance_type

  iam_instance_profile {
    name = var.iam_instance_profile_name
  }
  monitoring {
    enabled = true
  }
  

  network_interfaces {
  associate_public_ip_address = false
  subnet_id                   = tolist(values(var.app_private)).*.id
  security_groups             = var.security_groups
 }

 user_data = base64encode(var.data.rendered)


  lifecycle {
    create_before_destroy = true
  }
  update_default_version = true

}
