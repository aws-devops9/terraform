variable "sg_name" {
    type = string
    default = "roboshop-all-aws"
}

variable "sg_description" {
    type = string
    default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "inbound_from_port" {
    #type = string
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}