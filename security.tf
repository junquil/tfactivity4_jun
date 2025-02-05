resource "aws_security_group" "sg_manila_ops" {
    vpc_id = aws_vpc.vpcjun803.id

ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
}

egress {
    from_port = 0
    to_port = 0
    protocol = "-1" #allow all
    cidr_blocks = ["0.0.0.0/0"]
}

tags = {
    Name = "sg_manila_ops"
}

}