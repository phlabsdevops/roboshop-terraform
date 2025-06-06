#we can store the ids and pwds in "ssm parameter store". So that we can fetch for other folders through "data" block.
resource "aws_ssm_parameter" "mongodb-sg-id" {
  name  = "/${var.project_name}/${var.environment}/mongodb-sg-id"
  type  = "String"
  value = module.mongodb.sg-id #this sg-id originally comes from module i.e,"terraform-aws-security-group/outputs.tf".
}
