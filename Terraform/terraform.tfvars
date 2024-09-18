vpc_cidr = "10.0.0.0/16"
subnet_cidr_database = [ "10.0.7.0/24", "10.0.8.0/24" ]
subnet_cidr_app_private = [ "10.0.3.0/24", "10.0.4.0/24" ]
subnet_cidr_web_private = [ "10.0.5.0/24", "10.0.6.0/24" ]
subnet_cidr_public = [ "10.0.1.0/24", "10.0.2.0/24"  ]
cluster_identifier = "mydbcluster"
engine = "mysql"
engine_version = "8.0.35"
database_name = "mydb"
master_username = "foo"
master_password = "password"
web_instance_type = "t2.micro"
web_AMI = "ami-0c55b159cbfafe1f0"
aws_autoscaling_group_name_web  = "web-asg"
aws_autoscaling_group_name_app  = "app-asg"
app_instance_type = "t2.micro"
app_AMI = "ami-0c55b159cbfafe1f0"
db_instance_class = "db.t3.xlarge"
multi_az = true
publicly_accessible = false
backup_retention_period = 7

alb_sg_ingress_rules = {
  https = {
    from_port   = 443
    to_port     = 443
    cidr_blocks = ["0.0.0.0/0"]
  },
  http = {
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }
}
alb_sg_egress_rules = {
  all = {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
launch_template_version = "$Latest"