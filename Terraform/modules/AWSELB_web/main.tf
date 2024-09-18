resource "aws_elb" "web_elb" {
  name               = "web-elb"
  availability_zones = data.aws_availability_zones.available
  security_groups    = [var.elb_sg_id]
  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }
  listener {
    instance_port     = 443
    instance_protocol = "HTTPS"
    lb_port           = 443
    lb_protocol       = "HTTPS"
    ssl_certificate_id = var.cert_arn
  }
  tags = {
    Name = "web-elb"
  }
}

resource "aws_elb_health_check" "web_elb_health_check" {
  target              = "HTTP:80/"
  interval            = 30
  timeout             = 5
  healthy_threshold   = 2
  unhealthy_threshold = 2

  depends_on = [aws_elb.web_elb]
}
