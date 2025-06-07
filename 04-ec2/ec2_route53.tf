#mongodb ec2
module "mongodb" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-mongodb"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t3.small"
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
#redis ec2
module "redis" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-redis"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.redis-id-sg.value]
  subnet_id = local.database-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="redis"
    },
    {
        Name="${local.ec2_name}-redis"
    }
  )

}
#mysql ec2
module "mysql" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-mysql"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_ssm_parameter.mysql-id-sg.value]
  subnet_id = local.database-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="mysql"
    },
    {
        Name="${local.ec2_name}-mysql"
    }
  )

}
#rabbitmq ec2
module "rabbitmq" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-rabbitmq"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.rabbitmq-id-sg.value]
  subnet_id = local.database-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="rabbitmq"
    },
    {
        Name="${local.ec2_name}-rabbitmq"
    }
  )

}
#catalogue ec2
module "catalogue" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-catalogue"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.catalogue-id-sg.value]
  subnet_id = local.private-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="catalogue"
    },
    {
        Name="${local.ec2_name}-catalogue"
    }
  )

}
#user ec2
module "user" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-user"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.user-id-sg.value]
  subnet_id = local.private-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="user"
    },
    {
        Name="${local.ec2_name}-user"
    }
  )

}
#cart ec2
module "cart" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-cart"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.cart-id-sg.value]
  subnet_id = local.private-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="cart"
    },
    {
        Name="${local.ec2_name}-cart"
    }
  )

}
#shipping ec2
module "shipping" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-shipping"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.shipping-id-sg.value]
  subnet_id = local.private-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="shipping"
    },
    {
        Name="${local.ec2_name}-shipping"
    }
  )

}
#payment ec2
module "payment" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-payment"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.payment-id-sg.value]
  subnet_id = local.private-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="payment"
    },
    {
        Name="${local.ec2_name}-payment"
    }
  )

}
#web ec2
module "web" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  name="${local.ec2_name}-web"
  ami = data.aws_ami.devops-ami.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [data.aws_ssm_parameter.web-id-sg.value]
  subnet_id = local.public-subnet-id-0
  tags=merge(
    var.common_tags,{
        Component="web"
    },
    {
        Name="${local.ec2_name}-web"
    }
  )

}

module "records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"
  zone_name = var.zone_name

  records = [
    {
      name    = "mongodb"  #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.mongodb.private_ip}",
      ]
    },
    {
      name    = "redis"    #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.redis.private_ip}",
      ]
    },
    {
      name    = "mysql"     #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.mysql.private_ip}",
      ]
    },
    {
      name    = "rabbitmq"      #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.rabbitmq.private_ip}",
      ]
    },
    {
      name    = "catalogue"    #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.catalogue.private_ip}",
      ]
    },
    {
      name    = "user"        #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.user.private_ip}",
      ]
    },
    {
      name    = "cart"       #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.cart.private_ip}",
      ]
    },
    {
      name    = "shipping"    #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.shipping.private_ip}",
      ]
    },
    {
      name    = "payment"     #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.payment.private_ip}",
      ]
    },
    {
      name    = "web"      #it is automatically append as mongodb.phlabsdevops.site
      type    = "A"
      ttl     = 1
      records = [
        "${module.web.public_ip}",  #if you use vpn, private_ip also will work.
      ]
    },
  ]
}