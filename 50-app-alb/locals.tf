locals {
    # stringlist to list 
    private_isubnet_ids = split(",",data.aws_ssm_parameter.private_isubnet_ids.value)
    app_alb_sg_id = data.aws_ssm_parameter.app_alb_sg.id.value
}

