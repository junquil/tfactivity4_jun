resource "aws_instance" "devops_jun_50646" {
    ami             = "ami-0c614dee691cbbf37"
    instance_type   = "t2.micro"
    key_name        = "devops_jun"
    subnet_id       = aws_subnet.subnet1.id
    security_groups = [ aws_security_group.sg_manila_ops.name ]

    tags = {
        Name = "jun_ec2_50646"
    }
}