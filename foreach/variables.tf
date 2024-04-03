variable "instances_names" {
    type = map 
    default = {
        mongodb = "t3.small"
        redis = "t2.micro"
        mysql = "t3.small"
        shipping = "t3.small"
        cart = "t2.micro"
        user = "t2.micro"
        payment = "t2.micro"
        nginx = "t2.micro"
        web = "t2.micro"
        dispatch = "t2.micro"
        catalogue = "t2.micro"
    }
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