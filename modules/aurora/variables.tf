variable "region" {
  description = "The AWS region where the Aurora cluster will be deployed."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where the Aurora cluster will be deployed."
  type        = string
}

variable "private_subnet_ids" {
  description = "List of subnet IDs for the Aurora cluster in the VPC."
  type        = list(string)
}

variable "db_name" {
  description = "The name of the database to create in the cluster."
  type        = string
}

variable "db_username" {
  description = "Username for the database."
  type        = string
}

variable "db_password" {
  description = "Password for the database."
  type        = string
  sensitive   = true
}

variable "instance_type" {
  description = "The instance type of the Aurora cluster (e.g., db.t2.small)."
  type        = string
}

variable "aurora_cluster_name" {
  description = "The name of the Aurora cluster."
  type        = string
}

variable "engine" {
  description = "The name of the database engine to be used for this DB cluster (e.g., aurora, aurora-mysql, aurora-postgresql)."
  type        = string
}

variable "engine_version" {
  description = "The version number of the database engine to use."
  type        = string
}

variable "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
  type        = bool
  default     = true
}

variable "apply_immediately" {
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window."
  type        = bool
  default     = false
}

variable "backup_retention_period" {
  description = "The days to retain backups for the Aurora cluster."
  type        = number
  default     = 7
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "aurora_security_group_id" {
  description = "The ID of the security group for the Aurora DB cluster"
  type        = string
}
