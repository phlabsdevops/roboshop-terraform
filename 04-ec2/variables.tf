variable "common_tags" {
  type = map
  default = { 
    Project="Roboshop"
    Environment="dev"
    Terraform=true 
  }
}  
variable "ec2_tags" {
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
variable "zone_name" {
  type = string
  default = "phlabsdevops.site"
}