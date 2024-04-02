# 1. command line --> terraform -var="instance_type=t3.medium"
# 2. Variable file -var-file : roboshop.tfvars file --> terraform plan -var-file="roboshop.tfvars"
# 3. terraform.tfvars
# 4. Environment variables

variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Hello Terraform"
        Environment = "Dev"
        Project = "Roboshop"
        Componenet = "web"
        Terraform = "true"
    }
}

variable "sg_name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg_description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "inbound_from_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {
        Name = "Terraform-All"
        Environment = "Dev"
        Terraform = "true"
    }
    }