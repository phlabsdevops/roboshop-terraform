locals {
  ec2_name="${var.project_name}-${var.environment}"  
  #"split" ki opposite function is "join"
#we can fetch public-subnet-ids from ssm parameter store using "split" function. So that StringList converts into List 
#we can fetch private-subnet-ids from ssm parameter store using "split" function. So that StringList converts into List 
#we can fetch database-subnet-ids from ssm parameter store using "split" function. So that StringList converts into List 
#"element" function is getting single value from the list based on index number
  public-subnet-id-0=element(split(",", data.aws_ssm_parameter.public-subnet-ids.value),0)
  private-subnet-id-0=element(split(",", data.aws_ssm_parameter.private-subnet-ids.value),0)
  database-subnet-id-0=element(split(",", data.aws_ssm_parameter.database-subnet-ids.value),0)
  public-subnet-id-1=element(split(",", data.aws_ssm_parameter.public-subnet-ids.value),1)
  private-subnet-id-1=element(split(",", data.aws_ssm_parameter.private-subnet-ids.value),1)
  database-subnet-id-1=element(split(",", data.aws_ssm_parameter.database-subnet-ids.value),1)
}