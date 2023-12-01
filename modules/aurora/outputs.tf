output "aurora_cluster_id" {
  description = "The ID of the Aurora cluster"
  value       = aws_rds_cluster.aurora_cluster.id
}

output "aurora_cluster_endpoint" {
  description = "The endpoint of the Aurora cluster"
  value       = aws_rds_cluster.aurora_cluster.endpoint
}

output "aurora_cluster_reader_endpoint" {
  description = "The reader endpoint of the Aurora cluster"
  value       = aws_rds_cluster.aurora_cluster.reader_endpoint
}

# output "aurora_cluster_instance_endpoints" {
#   description = "The database instance endpoints in the Aurora cluster"
#   value       = [for instance in aws_rds_cluster_instance.aurora_instances : instance.endpoint]
# }