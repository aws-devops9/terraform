locals {
    Name = "prem"
    Training = "DevOps"
    instance_type = var.is_prod ? "t3.small" : "t2.micro"
}