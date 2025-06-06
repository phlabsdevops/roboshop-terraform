module "mongodb"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.mongodb-sg-name
    sg-description = var.mongodb-sg-description
    #ingress_rules = var.mongodb_sg_ingress_rules
}
module "redis"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.redis-sg-name
    sg-description = var.redis-sg-description
}
module "rabbitmq"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.rabbitmq-sg-name
    sg-description = var.rabbitmq-sg-description
}
module "mysql"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.mysql-sg-name
    sg-description = var.mysql-sg-description
}
module "catalogue"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.catalogue-sg-name
    sg-description = var.catalogue-sg-description
}
module "user"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.user-sg-name
    sg-description = var.user-sg-description
}
module "cart"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.cart-sg-name
    sg-description = var.cart-sg-description
}
module "shipping"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.shipping-sg-name
    sg-description = var.shipping-sg-description
}
module "payment"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.payment-sg-name
    sg-description = var.payment-sg-description
}
module "web"{
    source="../../terraform-aws-security-group"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    sg_tags = var.sg_tags
    vpc-id = data.aws_ssm_parameter.vpc-id-name.value
    sg-name = var.web-sg-name
    sg-description = var.web-sg-description
}
#mongodb is only accept connections from catalogue and user.
resource "aws_security_group_rule" "mongodb-catalogue" {
  source_security_group_id = module.catalogue.sg-id    
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  security_group_id = module.mongodb.sg-id
}
#mongodb is only accept connections from catalogue and user.
resource "aws_security_group_rule" "mongodb-user" {
  source_security_group_id = module.user.sg-id    
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  security_group_id = module.mongodb.sg-id
}
#redis is only accept connections from user and cart.
resource "aws_security_group_rule" "redis-user" {
  source_security_group_id = module.user.sg-id    
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  security_group_id = module.redis.sg-id
}
#redis is only accept connections from user and cart.
resource "aws_security_group_rule" "redis-cart" {
  source_security_group_id = module.cart.sg-id    
  type              = "ingress"
  from_port         = 6379
  to_port           = 6379
  protocol          = "tcp"
  security_group_id = module.redis.sg-id
}
