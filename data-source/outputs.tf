output "centos_ami_id" {
    value = data.aws_ami.centos8.id
}

output "amazon_ami_id" {
    value = data.aws_ami.Amazon_Linux2.id
}

output "vpc_id" {
    value = data.aws_vpc.default.id
}

output "vpc_info" {
    value = data.aws_vpc.default
}