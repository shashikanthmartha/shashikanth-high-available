resource "aws_security_group" "efs_sg" {
  vpc_id = var.vpc_id


  ingress {
    from_port       = 2049
    to_port         = 2049
    protocol        = "tcp"
    security_groups = var.ec2_sg_id # Allowing NFS traffic from instance SG
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
