include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "/Users/pantere/Repositories/local/intuitive-infrastructure-modules/s3"
}

inputs = {
    bucket_name = "intuitive-bucket-dev"
    aws_region = "eu-central-1"
}