variable "tags" {
  default = {
    Project = "My Own Project"
    Environment = "Prod"
    Module = "Frontend" 
    Project_id = 123456
  }
}

variable "allowed_cidr" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "ami_id" {
  type = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_name" {
  type = list(string)
  default = ["frontend", "backend", "db"]
}


##################################################
################   Route 53  #####################
##################################################

variable "zone_id" {
  default = "Z03061823K58PEFROH5QA"
}

variable "domain_name" {
  default = "kalyaneswar.site"
}

####################3
