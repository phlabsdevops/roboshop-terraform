module "mongodb" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-mongodb"
  vpc_security_group_ids = [data.aws_ssm_parameter.mongodb-id-sg.value]
  subnet_id = local.database-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="mongodb"
    },
    {
        Name="${local.ec2_name}-mongodb"
    }
  )

}