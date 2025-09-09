 resource "aws_instance" "this" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    subnet_id = "subnet-0f970ac6fb262b6cb"
    instance_type = lookup(var.instance_type, terraform.workspace) 
   tags = {
    Name = "Terraform-demo-${terraform.workspace}"
    Purpose = "terraform-practice"
   }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_${terraform.workspace}"
  description = "Allow TLS inbound and all outbound traffic"
  vpc_id = "vpc-0cff62a4c9dcdf272"


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