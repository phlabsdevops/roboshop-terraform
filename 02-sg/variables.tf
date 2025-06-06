variable "common_tags" {
  type = map
  default = { 
    Project="Roboshop"
    Environment="dev"
    Terraform=true 
  }
}  
variable "sg_tags" {
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
variable "mongodb-sg-name" {
  type = string
  default = "monogdb"
}
variable "mongodb-sg-description"{
    type=string
    default="Allow traffic from  catalogue and user"
}
variable "redis-sg-name" {
  type = string
  default = "redis"
}
variable "redis-sg-description"{
    type=string
    default="Allow traffic for mongodb"
}
variable "rabbitmq-sg-name" {
  type = string
  default = "rabbitmq"
}
variable "rabbitmq-sg-description"{
    type=string
    default="Allow traffic for mongodb"
}
variable "mysql-sg-name" {
  type = string
  default = "mysql"
}
variable "mysql-sg-description"{
    type=string
    default="Allow traffic for mongodb"
}
variable "catalogue-sg-name" {
  type = string
  default = "catalogue"
}
variable "catalogue-sg-description" {
  type = string
  default = "catalogue description"
}
variable "user-sg-name" {
  type = string
  default = "user"
}
variable "user-sg-description" {
  type = string
  default = "user description"
}
variable "cart-sg-name" {
  type = string
  default = "cart"
}
variable "cart-sg-description"{
    type=string
    default="Allow traffic from  catalogue and user"
}
variable "shipping-sg-name" {
  type = string
  default = "shipping"
}
variable "shipping-sg-description"{
    type=string
    default="Allow traffic for shipping"
}
variable "payment-sg-name" {
  type = string
  default = "payment"
}
variable "payment-sg-description"{
    type=string
    default="Allow traffic for mongodb"
}
variable "web-sg-name" {
  type = string
  default = "web"
}
variable "web-sg-description"{
    type=string
    default="Allow traffic for mongodb"
}
variable "mongodb_sg_ingress_rules" {
  type = list
  default = [
    {
         description="allow port 80"
         from_port        = 80
         to_port          = 80
         protocol         = "tcp"
         cidr_blocks      = ["0.0.0.0/0"]       
        },
        {
         description="allow port 443"
         from_port        = 443
         to_port          = 443
         protocol         = "tcp"
         cidr_blocks      = ["0.0.0.0/0"]  
        },
        {
         description="allow port 22"
         from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] 
        }
  ]
}
