resource "aws_vpc" "vpc_jun" {
    cidr_block           = "10.0.0.0/16"
    enable_dns_support   = true
    enable_dns_hostnames = true

    tags = {
        Name = "vpc_jun"
    }
}

resource "aws_subnet" "subnet1" {
    vpc_id                  = aws_vpc.vpc_jun.id
    cidr_block              = "10.0.1.0/24"
    map_public_ip_on_launch = true
    tags = {
        Name = "subnet1"
    }
}
