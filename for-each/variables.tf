variable "instances" {
  type = map 
  default = {
    mysql = "t3.small"
    backend = "t2.micro"
    frontend = "t3.micro"
  }
}

variable "zone_id" {
  default = "Z04937802OYFAGU4M6BTX"
}

variable "domain_name" {
  default = "trinath.online"
}