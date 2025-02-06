resource "aws_instance" "devopsjun741" {
    ami             = "ami-0c614dee691cbbf37"
    instance_type   = "t2.micro"
    key_name        = "devops_jun"
    subnet_id       = aws_subnet.subnet1.id
    aws_security_group = [ aws_security_group.sg_manila_ops.name ]

    tags = {
        Name = "devopsjun741"
    }
}