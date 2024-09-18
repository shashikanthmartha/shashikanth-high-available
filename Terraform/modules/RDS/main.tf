resource "aws_db_instance" "db" {
  # depends_on              = [aws_db_subnet_group.var.db_subnet_group_name]
  identifier              = var.cluster_identifier
  allocated_storage       = var.allocated_storage
  storage_type            = var.storage_type
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.db_instance_class
  multi_az                = var.multi_az
  username                = var.master_username
  password                = var.master_password
  storage_encrypted       = false
  # kms_key_id              = var.rds_conf.storage_encrypted == true ? data.aws_kms_key.db_kms_key.arn : null
  vpc_security_group_ids  = var.db_security_group_ids
  db_subnet_group_name    = var.db_subnet_group_name
  publicly_accessible     = var.publicly_accessible
  backup_retention_period = var.backup_retention_period
  skip_final_snapshot     = true
}