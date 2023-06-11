include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "/Users/pantere/Repositories/local/intuitive-infrastructure-modules/vpc"
}

inputs = {
    vpc_name = "vpc"
    vpc_cidr = "10.0.0.0/16"
    azs = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
    private_subnets_cidrs = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24"]
    public_subnets_cidrs = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
    tag_environment = "prod"
}