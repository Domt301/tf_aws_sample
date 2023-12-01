# Configure the AWS Provider
provider "aws" {
  region = "us-west-2" # e.g., us-west-2
}

# Network Module
module "network" {
  source = "./modules/network"

  region                = var.aws_region
  vpc_cidr              = var.vpc_cidr
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
}

module "aurora" {
  source = "./modules/aurora"

  region                   = var.aws_region
  vpc_id                   = module.network.vpc_id
  private_subnet_ids       = module.network.private_subnet_ids
  aurora_security_group_id = module.network.aurora_security_group_id
  aurora_cluster_name = "myauroracluster" # Replace with your desired cluster name
  engine = "aurora-mysql"                       # Replace with "MySQL" or "PostgreSQL
  engine_version = "5.7.mysql_aurora.2.11.4"        # Replace with your desired engine version
  db_name       = "mydatabase"     # Replace with your database name
  db_username   = "dbuser"         # Replace with your desired username
  db_password   = "yourpassword123"   # Replace with a secure password
  instance_type = "db.t3.medium"   # Choose an appropriate instance type

  # Include other Aurora-specific variables as required by your module
}

module "ec2" {
  source = "./modules/ec2"
  public_subnet_ids = module.network.public_subnet_ids
  ec2_security_group_id = module.network.ec2_security_group_id
  region = var.aws_region
  ami_id = var.ami_id
  instance_type = var.instance_type
  

}