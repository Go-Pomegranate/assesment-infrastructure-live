include "root" {
  path = find_in_parent_folders()
}

dependency "vpc" {
  config_path = "../../vpc"
}

terraform {
  source = "/Users/pantere/Repositories/local/intuitive-infrastructure-modules/ec2"
}

inputs = {
    instance_count    = 2
    ec2_instance_name = "app"
    instance_type     = "t2.micro"
    ami_id            = "ami-0abcdef1234567890"
    subnet_ids = dependency.vpc.outputs.application_subnets
    key_name          = "mykey"
    public_key_path   = "./key.pub"
    sg_name           = "app-sg"
    sg_description    = "Security group for app"
    ingress_cidr_blocks = ["0.0.0.0/0"]
    ingress_rules     = ["all-tcp"]
    create_ebs_volume = true
    ebs_device_name   = "/dev/sdh"
    ebs_volume_type   = "gp2"
    ebs_volume_size   = 30
    # Made just to test faster, normally should be false
    ebs_delete_on_termination = true
    tag_environment   = "dev"
    custom_tags       = {
        "Owner" = "username"
        "CostCenter" = "xyz"
    }
}