module "mysql_sg" {
    source = "git::https://github.com/vinaiuvr-joindevops/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "mysql"
    sg_description = "created for MySQL instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    
    }

module "backend_sg" {
    source = "git::https://github.com/vinaiuvr-joindevops/terraform-aws-securitygroup.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    sg_name = "backend"
    sg_description = "created for MySQL instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    
    }

module "frontend_sg" {
    source = "git::https://github.com/vinaiuvr-joindevops/terraform-aws-securitygroup.git?ref=main""
    project_name = var.project_name
    environment = var.environment
    sg_name = "frontend"
    sg_description = "created for MySQL instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    
    }

module "bastion_sg" {
    source = "git::https://github.com/vinaiuvr-joindevops/terraform-aws-securitygroup.git?ref=main""
    project_name = var.project_name
    environment = var.environment
    sg_name = "bastion"
    sg_description = "created for bastion instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    
    }

module "app_alb_sg" {
    source = "git::https://github.com/vinaiuvr-joindevops/terraform-aws-securitygroup.git?ref=main""
    project_name = var.project_name
    environment = var.environment
    sg_name = "app_alb_sg"
    sg_description = "created for backend_alb instances in expense dev"
    vpc_id = data.aws_ssm_parameter.vpc_id.value
    common_tags = var.common_tags
    
    }

