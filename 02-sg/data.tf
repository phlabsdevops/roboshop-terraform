#we can fetch the vpc-id where it can stored in "ssm parameter store"
data "aws_ssm_parameter" "vpc-id-name" {
    name="/${var.project_name}/${var.environment}/vpc-id"
}
