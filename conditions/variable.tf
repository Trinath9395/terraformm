variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "This is Redhat9 AMI ID"
}

variable "instance_type" {   
  type = string
  default = "t2.micro"
} 

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "subnet_id" {
  type = string
  default = "subnet-0f970ac6fb262b6cb"
}

variable "ec2_tags" {
  type = map
  default = {
    Project = "expense"
    Component = "backend"
    Environment = "dev"
    Name = "expense-backend-dev"
  }
}

variable "from_port" {
  type = number
  default = 22
}

variable "to_port" {
  type = number
  default = 22
}

variable "cidr_blocks" {
  type = list(string)  
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map 
  default = {
    Name = "expense-backend-dev"
  }
}
