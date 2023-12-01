provider "aws" {
  region = var.region
}

resource "aws_db_subnet_group" "aurora_subnet_group" {
  name       = "${var.aurora_cluster_name}-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = merge(
    var.tags,
    {
      "Name" = "aurora-subnet-group"
    }
  )
}

resource "aws_rds_cluster" "aurora_cluster" {
  cluster_identifier      = var.aurora_cluster_name
  engine                  = var.engine
  engine_version          = var.engine_version
  database_name           = var.db_name
  master_username         = var.db_username
  master_password         = var.db_password
  db_subnet_group_name    = aws_db_subnet_group.aurora_subnet_group.id
  vpc_security_group_ids = [var.aurora_security_group_id]
  skip_final_snapshot = true
  storage_encrypted       = var.storage_encrypted
  apply_immediately       = var.apply_immediately
  backup_retention_period = var.backup_retention_period

  tags = var.tags

   lifecycle {
    ignore_changes = [
      engine_version,
    ]
  }
}

