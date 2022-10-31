terraform {
	backend "local" {
	  path = "C:/Users/SUYOG/OneDrive/Desktop/Terraform/Ec2/terraform.tfstate.d"
	}
}
provider "aws" {
	region = "ap-south-1"
}

resource "aws_instance" "instance-ec2" {
	ami = "ami-05c8ca4485f8b138a"
	instance_type = "t2.micro"
	key_name = "Suyog"
	tags = {
	    Name = "Trial_instance"
	}
}
