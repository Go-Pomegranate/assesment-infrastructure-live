include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "github.com/Go-Pomegranate/assesment-infrastructure-modules.git//s3"
}

inputs = {
    bucket_name = "assesment-123-bucket-test"
    aws_region = "eu-central-1"
}