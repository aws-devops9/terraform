resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_name == "mongodb" ? "t3.small" : "t2.micro" # If Instanec name is equal to mongodb then instance type = t3.small otherwise t2.micro
  #vpc_security_group_ids = [aws_security_group.roboshop-all-terraform.id] # [] --> this means list, now EC2 instance will be created in this security group "aws_security_group.roboshop-all-terraform.id"

}
