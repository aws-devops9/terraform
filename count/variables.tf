variable "instances_names" {
    type = list 
    default = ["mongodb", "mysql", "redis", "user", "cart", "payment", "ngnix", "web", "rabbitmq", "shipping", "dispatch"]
  
}

variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
}

variable "zone_id" {
    type = string
    default = "Z02357183AC34D1F7B6MH"
}

variable "domain_name" {
    type = string
    default = "learndevops.space"
}