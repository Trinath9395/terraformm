variable "instances" {
  default = ["mysql", "backend", "frontend"]
}

# variable "instance_types" {
#   default = ["t2.micro", "t3.small", "t3.micro"]
# }

variable "zone_id" {
  default = "Z04937802OYFAGU4M6BTX"
}

variable "domain_name" {
  default = "trinath.online"
}

variable "common_tags" {
  type =map 
  default = {
    project = "expense"
    Environment = "dev"
  }  
}