output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public.*.id
}

output "app_private_subnets" {
  value = aws_subnet.app_private.*.id
}
output "web_private_subnets" {
  value = aws_subnet.web_private.*.id
}
output "database_subnets" {
  value = aws_subnet.database.*.id 
}
