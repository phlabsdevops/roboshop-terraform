#we can store the ids and pwds in "ssm parameter store". So that we can fetch for other folders through "data" block.
resource "aws_ssm_parameter" "vpc-id" {
  name  = "/${var.project_name}/${var.environment}/vpc-id"
  type  = "String"
  value = module.roboshop.vpc-id
}
resource "aws_ssm_parameter" "public-subnet-ids" {
  name  = "/${var.project_name}/${var.environment}/public-subnet-ids"
  type  = "StringList"
  #subnets output list type. But aws ssm parameter store can't accept "List". So that we convert List ton StringList using "join" function
  #"join" ki opposite function is "split"
  value = join("," , module.roboshop.public-subnet-ids)
}
resource "aws_ssm_parameter" "private-subnet-ids" {
  name  = "/${var.project_name}/${var.environment}/private-subnet-ids"
  type  = "StringList"
  #subnets output list type. But aws ssm parameter store can't accept "List". So that we convert List ton StringList using "join" function
  #"join" ki opposite function is "split"
  value = join("," , module.roboshop.private-subnet-ids)
}
resource "aws_ssm_parameter" "database-subnet-ids" {
  name  = "/${var.project_name}/${var.environment}/database-subnet-ids"
  type  = "StringList"
  #subnets output list type. But aws ssm parameter store can't accept "List". So that we convert List ton StringList using "join" function
  #"join" ki opposite function is "split"
  value = join("," , module.roboshop.database-subnet-ids)
}
