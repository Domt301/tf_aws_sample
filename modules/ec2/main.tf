provider "aws" {
  region = var.region
}

resource "aws_instance" "ec2_instance" {
  count         = 1  # Creating 3 EC2 instances
  ami           = var.ami_id
  instance_type = var.instance_type


  subnet_id                   = element(var.public_subnet_ids, count.index)
  vpc_security_group_ids      = [var.ec2_security_group_id]
  associate_public_ip_address = true

  tags = merge(
    var.tags,
    {
      "Name" = "EC2Instance-${count.index + 1}"
    }
  )

}
