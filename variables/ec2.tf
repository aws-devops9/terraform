resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.roboshop-all-terraform.id] # [] --> this means list, now EC2 instance will be created in this security group "aws_security_group.roboshop-all-terraform.id"

  tags = var.tags
}
