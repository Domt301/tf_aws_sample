output "ec2_instance_ids" {
  description = "The IDs of the EC2 instances"
  value       = aws_instance.ec2_instance.*.id
}

output "ec2_instance_public_ips" {
  description = "The public IP addresses of the EC2 instances"
  value       = aws_instance.ec2_instance.*.public_ip
}

output "ec2_instance_private_ips" {
  description = "The private IP addresses of the EC2 instances"
  value       = aws_instance.ec2_instance.*.private_ip
}
