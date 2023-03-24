/**
 * Module: EC2 Instance
 *
 *
 **/
module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "example-instance"

  ami           = "ami-0efa651876de2a5ce"
  instance_type = "t2.micro"

  subnet_id = module.vpc.public_subnets[0]
}
