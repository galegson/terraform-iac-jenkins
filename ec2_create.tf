module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 5

  ami                    = "ami-0d296d66f22f256c2"
  instance_type          = "t2.micro"
  
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
