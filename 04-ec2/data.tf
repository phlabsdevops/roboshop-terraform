#we can fetch mongodb-sg-id from ssm parameter store
data "aws_ssm_parameter" "mongodb-id-sg" {
    name="/${var.project_name}/${var.environment}/mongodb-sg-id"
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