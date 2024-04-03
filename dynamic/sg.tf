resource "aws_security_group" "roboshop-all-terraform" { # This is terraform name for terraform reference only
  name        =  "dynamic-loop" # This is AWS
  description = "dynamic-loop"
  #vpc_id      = aws_vpc.main.id # If we don't specify the VPC ID, default VPC will be taken while creating security group
  
dynamic ingress {
    for_each = var.ingress_rules
    content {
        description = ingress.value["description"]
        from_port        = ingress.value["from_port"]
        to_port          = ingress.value["to_port"]
        protocol         = ingress.value["protocol"]
        cidr_blocks      = ingress.value["cidr_blocks"]
        #ipv6_cidr_blocks = ["0.0.0.0/0"]
        }
  }

   egress {
    from_port        = 0 # 0 means All
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = ["::/0"]
  }
    tags = {
    Name = "roboshop-all-aws"
  }
}