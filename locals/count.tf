# resource "aws_instance" "web" {
#   #count = 11 # 11 Instances will be created with Name Web because we give tag as "web" below
#   #count = 11 # count.index is the special variable
#   count = length(var.instances_names)
#   ami           = var.ami_id
#   instance_type = local.instance_type

#   tags = {
#     Name = var.instances_names[count.index]
#     Environment = "Dev"
#     Project = "Roboshop"
#     Terraform = "true"
# }
# }

# # find the below Route 53 module in Google 
# resource "aws_route53_record" "www" {
#   #count = 11
#   count = length(var.instances_names)
#   zone_id = var.zone_id
#   name    = "${var.instances_names[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = [local.ip]
#   # Here the value of --[var.instances_names[count.index]-- will be mongodb, web, mysql, shipping etc.
#   # Here we are getting public Ip address from the output --- aws_instance.web[count.index].public_ip ---
#   # Here we are getting private Ip address from the output --- aws_instance.web[count.index].private_ip ---
# }

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = local.instance_type

  tags = {
    Name = "Locals"
    Environment = "Dev"
    Project = "Locals"
    Terraform = "true"
}
}
