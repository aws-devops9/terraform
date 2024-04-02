resource "aws_security_group" "roboshop-all-terraform" { # This is terraform name for terraform reference only
  name        =  var.sg_name # This is AWS
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id # If we don't specify the VPC ID, default VPC will be taken while creating security group
  
  ingress {
    description = "Allow-All-Ports"
    from_port        = var.inbound_from_port # 0 means All
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = ["0.0.0.0/0"]
  }

   egress {
    from_port        = 0 # 0 means All
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }
    tags = var.sg_tags
}