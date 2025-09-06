 resource "aws_instance" "this" {
    ami = data.aws_ami.joindevops.id
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    subnet_id = "subnet-0f970ac6fb262b6cb"
    instance_type = "t2.micro" 
   tags = {
    Name = "Terraform-demo"
    Purpose = "terraform-practice"
   }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound and all outbound traffic"
  vpc_id = var.aws_vpc

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = "allow_tls"
  }
}