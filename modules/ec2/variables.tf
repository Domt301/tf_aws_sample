variable "region" {
  description = "The AWS region for the EC2 instances."
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instances."
  type        = string
}

variable "instance_type" {
  description = "The instance type of the EC2 instances."
  type        = string
}



variable "public_subnet_ids" {
  description = "The IDs of the public subnets for the EC2 instances."
  type        = list(string)
}

variable "ec2_security_group_id" {
  description = "The ID of the security group for the EC2 instances."
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}
