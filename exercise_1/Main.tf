# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
region = "us-east-1"
access_key = "xxxxxx"
secret_key = "xxxxxx"
}
# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2" {
  count = "4"
  ami = "ami-0ed9277fb7eb570c9"
  instance_type = "t2.micro"
  subnet_id = "subnet-07d59c4625c5ed80b"
  tags = {
    name = "Udacity Terraform"
  }
}
# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "UdacityM4" {
  count = "2"
  ami = "ami-0ed9277fb7eb570c9"
  instance_type = "m4.large"
  subnet_id = "subnet-07d59c4625c5ed80b"
   tags = {
    name = "Udacity Terraform"
  }
}
