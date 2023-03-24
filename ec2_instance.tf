/**
 * Module: EC2 Instance
 * Source: https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest
 *
 * This module creates an EC2 instance within the 
 * first public subnet of the "example-vpc" vpc
 **/
module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "example-instance"

  // Define the attributes of the instance
  ami           = "ami-0efa651876de2a5ce"
  instance_type = "t2.micro"

  // Define the subnet the instance is launched in
  subnet_id = module.vpc.public_subnets[0]
}
