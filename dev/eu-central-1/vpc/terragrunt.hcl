include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "https://github.com/Go-Pomegranate/assesment-infrastructure-modules.git//vpc"
}

inputs = {
    vpc_name = "dev"
    vpc_cidr = "10.0.0.0/16"
    azs = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
    frontend_subnets_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
    database_subnets_cidrs = ["10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24"]
    application_subnets_cidrs = ["10.0.6.0/24", "10.0.7.0/24", "10.0.8.0/24"]
    tag_environment = "dev"
}