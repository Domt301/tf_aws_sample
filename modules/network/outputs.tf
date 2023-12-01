output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = aws_subnet.public.*.id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private.*.id
}

output "ec2_security_group_id" {
  description = "The ID of the security group for the EC2 instances"
  value       = aws_security_group.ec2_sg.id
}

output "aurora_security_group_id" {
  description = "The ID of the security group for the Aurora DB"
  value       = aws_security_group.aurora_sg.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.gw.id
}
