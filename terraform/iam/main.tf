variable "aws_profile" {}
variable "aws_region" {}
variable "bucket_name" {}

terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  profile = "${var.aws_profile}"
  region  = "${var.aws_region}"
  version = "~> 2.16"
}

resource "aws_s3_bucket" "vmimport" {
  bucket = "${var.bucket_name}"
  acl    = "private"

  tags = {
    Name        = "vmimport"
    Environment = "Test"
  }
}

resource "null_resource" "vmimport_service_role" {
  provisioner "local-exec" {
    command = "aws --profile=${var.aws_profile} iam create-role --role-name vmimport --assume-role-policy-document 'file://policy/trust-policy.json'"
  }
}

resource "null_resource" "vmimport_trust_policy" {
  provisioner "local-exec" {
    command = "aws --profile=${var.aws_profile} iam put-role-policy --role-name vmimport --policy-name vmimport --policy-document 'file://policy/role-policy.json'"
  }
}
