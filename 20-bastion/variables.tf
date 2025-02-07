variable "project_name" {
    default = "expense"
}

variable "environment" {
    default = "dev"
}

variable "common tags" {
    default ={
        Project = "expense"
        Environment = "dev"
        Terraform = "true"
    }
}
