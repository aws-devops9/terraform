resource "aws_instance" "web" {
  for_each = var.instances_names # We are using foreach to iterate the map in variables
  ami           = var.ami_id
  instance_type = each.value

  tags = {
    Name = each.key
    Environment = "Dev"
    Project = "Roboshop"
    Terraform = "true"
}
}

# # find the below Route 53 module in Google 
# resource "aws_route53_record" "www" {
#   #count = 11
#   count = length(var.instances_names)
#   zone_id = var.zone_id
#   name    = "${var.instances_names[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = [var.instances_names[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip] # Condition 
# }

# find the below Route 53 module in Google 
resource "aws_route53_record" "www" {
  for_each = aws_instance.web
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [each.key == "web" ? each.value.public_ip : each.value.private_ip]
}