output "vpc_id" {
  value = aws_vpc.main.id
}
output "public_subnets" {
  value = aws_subnet.public.*.id
}
output "private_subnets" {
  value = zipmap(aws_subnet.private.*.id, aws_subnet.private.*.id)
}
