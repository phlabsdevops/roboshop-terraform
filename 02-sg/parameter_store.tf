#we can store the ids and pwds in "ssm parameter store". So that we can fetch for other folders through "data" block.
resource "aws_ssm_parameter" "mongodb-sg-id" {
  name  = "/${var.project_name}/${var.environment}/mongodb-sg-id"
  type  = "String"
  value = module.mongodb.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
resource "aws_ssm_parameter" "redis-sg-id" {
  name  = "/${var.project_name}/${var.environment}/redis-sg-id"
  type  = "String"
  value = module.redis.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
resource "aws_ssm_parameter" "mysql-sg-id" {
  name  = "/${var.project_name}/${var.environment}/mysql-sg-id"
  type  = "String"
  value = module.mysql.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
resource "aws_ssm_parameter" "rabbitmq-sg-id" {
  name  = "/${var.project_name}/${var.environment}/rabbitmq-sg-id"
  type  = "String"
  value = module.rabbitmq.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
resource "aws_ssm_parameter" "catalogue-sg-id" {
  name  = "/${var.project_name}/${var.environment}/catalogue-sg-id"
  type  = "String"
  value = module.catalogue.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
resource "aws_ssm_parameter" "user-sg-id" {
  name  = "/${var.project_name}/${var.environment}/user-sg-id"
  type  = "String"
  value = module.user.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
resource "aws_ssm_parameter" "cart-sg-id" {
  name  = "/${var.project_name}/${var.environment}/cart-sg-id"
  type  = "String"
  value = module.cart.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
resource "aws_ssm_parameter" "shipping-sg-id" {
  name  = "/${var.project_name}/${var.environment}/shipping-sg-id"
  type  = "String"
  value = module.shipping.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
resource "aws_ssm_parameter" "payment-sg-id" {
  name  = "/${var.project_name}/${var.environment}/payment-sg-id"
  type  = "String"
  value = module.payment.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
resource "aws_ssm_parameter" "web-sg-id" {
  name  = "/${var.project_name}/${var.environment}/web-sg-id"
  type  = "String"
  value = module.web.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}