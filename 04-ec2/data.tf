#we can fetch mongodb-sg-id from ssm parameter store
data "aws_ssm_parameter" "mongodb-id-sg" {
    name="/${var.project_name}/${var.environment}/mongodb-sg-id"
}
data "aws_ssm_parameter" "redis-id-sg" {
    name="/${var.project_name}/${var.environment}/redis-sg-id"
}
data "aws_ssm_parameter" "mysql-id-sg" {
    name="/${var.project_name}/${var.environment}/mysql-sg-id"
}
data "aws_ssm_parameter" "rabbitmq-id-sg" {
    name="/${var.project_name}/${var.environment}/rabbitmq-sg-id"
}
data "aws_ssm_parameter" "catalogue-id-sg" {
    name="/${var.project_name}/${var.environment}/catalogue-sg-id"
}
data "aws_ssm_parameter" "user-id-sg" {
    name="/${var.project_name}/${var.environment}/user-sg-id"
}
data "aws_ssm_parameter" "cart-id-sg" {
    name="/${var.project_name}/${var.environment}/cart-sg-id"
}
data "aws_ssm_parameter" "shipping-id-sg" {
    name="/${var.project_name}/${var.environment}/shipping-sg-id"
}
data "aws_ssm_parameter" "payment-id-sg" {
    name="/${var.project_name}/${var.environment}/payment-sg-id"
}
data "aws_ssm_parameter" "web-id-sg" {
    name="/${var.project_name}/${var.environment}/web-sg-id"
}


#"split" ki opposite function is "join"
#we can fetch public-subnet-ids from ssm parameter store using "split" function. So that StringList converts into List 
data "aws_ssm_parameter" "public-subnet-ids" {
    name="/${var.project_name}/${var.environment}/public-subnet-ids"
}
#we can fetch private-subnet-ids from ssm parameter store using "split" function
data "aws_ssm_parameter" "private-subnet-ids" {
    name="/${var.project_name}/${var.environment}/private-subnet-ids"
}
#we can fetch database-subnet-ids from ssm parameter store using "split" function
data "aws_ssm_parameter" "database-subnet-ids" {
    name="/${var.project_name}/${var.environment}/database-subnet-ids"
}
data "aws_ami" "devops-ami" {
  owners=["973714476881"]
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  most_recent = true
}