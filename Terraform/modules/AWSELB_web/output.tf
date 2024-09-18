output "elb_web" {
  value = aws_elb.web_elb.id
}
output "web_elb_dns" {
  value = aws_elb.web_elb.dns_name
}
output "web_elb_zone_id" {
  value = aws_elb.web_elb.zone_id
}