 resource "aws_instance" "this" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    subnet_id = "subnet-0f970ac6fb262b6cb"
    instance_type = "t2.micro" 
    tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound and all outbound traffic"
  vpc_id = "vpc-0cff62a4c9dcdf272"


  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = var.sg_tags
}