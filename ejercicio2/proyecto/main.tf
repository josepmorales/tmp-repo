provider "aws" {
  region     = "us-west-1"
  access_key = "MYACCESKEY"
  secret_key = "MYSECRETKEY"
}

module "ec2module" {
  source = "../modules/ec2"
  instance_type = var.instance_type
  tags = var.tags_name
}

module "s3" {
  source = "../modules/bucket"
  bucket = var.bucket
}
