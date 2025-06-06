variable "common_tags" {
  type = map
  default = { 
    Project="Roboshop"
    Environment="dev"
    Terraform=true 
  }
}
variable "vpc_tags" {
  type = map
  default = { 

  }
}   
variable "project_name" {
  type=string
  default = "roboshop"
}
variable "environment" {
  type=string
  default = "dev"
}
variable "igw_tags" {
  type = map
  default = {  #optional
  }
}
variable "public_subnet_tags" {
  type = map
  default = {  #optional
  }
}
variable "public_subnet_cidr" {
  type=list
  default = ["10.0.1.0/24","10.0.2.0/24" ]
}
variable "private_subnet_tags" {
  type = map
  default = {  #optional
  }
}
variable "database_subnet_tags" {
  type = map
  default = {  #optional
  }
}
variable "private_subnet_cidr" {
  type=list
  default = ["10.0.11.0/24","10.0.12.0/24" ]
}
variable "database_subnet_cidr" {
  type=list
  default = ["10.0.21.0/24","10.0.22.0/24" ]
}
variable "ngw_tags" {
  type = map
  default = {  #optional
  }
}
variable "public_route_table_tags" {
  type = map
  default = {  #optional
  }
}
variable "private_route_table_tags" {
  type = map
  default = {  #optional
  }
}
variable "database_route_table_tags" {
  type = map
  default = {  #optional
  }
}
variable "vpc_peering_tags" {
  type = map
  default = {  #optional
  }
}
variable "is_peering_required" { #in module we gave false
  type = bool
  default=true
}