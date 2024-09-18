resource "aws_autoscaling_group" "web_asg" {
  launch_template {
    id      = var.launch_template_id
    version = var.launch_template_version
  }

  min_size            = 2
  max_size            = 3
  desired_capacity    = 3
  vpc_zone_identifier = var.vpc_zone_identifier
  health_check_type   = "ELB"
  health_check_grace_period = 300
  lifecycle {
    create_before_destroy = true
  }
  enabled_metrics = [
    "GroupMinSize",
    "GroupMaxSize",
    "GroupDesiredCapacity",
    "GroupInServiceInstances",
    "GroupTotalInstances"
  ]
  metrics_granularity = "1Minute"

load_balancers = [var.web_elb_name]

  tag {
    key                 = "Name"
    value               = "asg-instance"
    propagate_at_launch = true
  }
}
