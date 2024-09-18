resource "aws_efs_file_system" "efs" {}

resource "aws_efs_mount_target" "efs_mount" {
  for_each        = { for idx, subnet in var.subnet_app_private : idx => subnet }
  file_system_id = aws_efs_file_system.efs.id
  subnet_id      = each.value
  security_groups = var.security_groups
}