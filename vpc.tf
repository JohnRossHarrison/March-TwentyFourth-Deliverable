/**
 * Module: vpc
 * Source: https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
 *
 * This module creates a VPC with the CIDR block 10.0.0.0/16 over the
 *  us-west-2 a & b availability zones, with 3 private and 3 public subnets
**/
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  // Define the vpc name and reserve its CIDR block
  name = "example-vpc"
  cidr = "10.0.0.0/16"

  // Assign the vpc's AZs and subnets
  azs             = ["us-west-2a", "us-west-2b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}
