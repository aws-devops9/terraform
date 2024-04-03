variable "ingress_rules" {
    type = list 
    default = [
        {
            description = "Allow Port 80"
            from_port        = 80 # 0 means All
            to_port          = 80
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
            #ipv6_cidr_blocks = ["0.0.0.0/0"]
        },

        {
            description = "Allow Port 22"
            from_port        = 22
            to_port          = 22
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
            #ipv6_cidr_blocks = ["0.0.0.0/0"]
        },

        {
            description = "Allow Port 443"
            from_port        = 443
            to_port          = 443
            protocol         = "tcp"
            cidr_blocks      = ["0.0.0.0/0"]
            #ipv6_cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}