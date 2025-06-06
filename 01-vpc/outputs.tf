output "ssm-vpc-id"{
    value=aws_ssm_parameter.vpc-id.value
    sensitive = true
}
# output "public-subnet-ids" {
#   value = aws_subnet.public[*].id
# }
# output "private-subnet-ids" {
#   value = aws_subnet.private[*].id
# }
# output "database-subnet-ids" {
#   value = aws_subnet.database[*].id
# }
# output "public-subnet-ids" {
#   value = module.roboshop.public-subnet-ids
# }
# output "private-subnet-ids" {
#   value = module.roboshop.private-subnet-ids
# }
# output "database-subnet-ids" {
#   value = module.roboshop.database-subnet-ids
# }