output "ami_id" {
  value = data.aws_ami.joindevops.id
}

output "aws_vpc" {
  value = data.aws_vpc.MY-VPC.id
}