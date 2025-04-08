provider "aws" {
  profile = "default"
  region = "us-east-1" # Replace with your preferred region
  assume_role {
    role_arn = "arn:aws:iam::531591785787:role/terraform-create-role"
  }
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-04b4f1a9cf54c11d0" # Replace with a valid AMI ID
  instance_type = "t2.micro"             # Instance type (eligible for Free Tier)

  tags = {
    Name = "MyTerraformEC2Instance"
  }

  # Optional: Associate a key pair
  key_name = "Octoperf_KeyPair"               # Replace with an existing key pair name
}
