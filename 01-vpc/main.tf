module "roboshop" { 
  #source="../../terraform-modules-vpc/vpc"
  source="git::https://github.com/phlabsdevops/vpc-module.git?ref=main"
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags
  igw_tags = var.igw_tags
  public_subnet_tags = var.public_subnet_tags
  public_subnets_cidr = var.public_subnet_cidr
  private_subnet_tags = var.private_subnet_tags
  private_subnets_cidr = var.private_subnet_cidr
  database_subnets_cidr = var.database_subnet_cidr
  ngw_tags = var.ngw_tags
  public_route_table_tags = var.public_route_table_tags
  private_route_table_tags = var.private_route_table_tags
  database_route_table_tags = var.database_route_table_tags
  vpc_peering_tags = var.vpc_peering_tags
  is_peering_required = var.is_peering_required
}