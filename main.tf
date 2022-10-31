terraform {
	backend "local" {
	  path = "C:/Users/SUYOG/OneDrive/Desktop/Terraform/Ec2/terraform.tfstate.d/dev"
	}
}
provider "aws" {
	region = "ap-south-1"
	access_key = "AKIA3NKZCAXHALSVWD7G"
	secret_key = "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"
}

resource "aws_instance" "instance-ec2" {
	ami = "ami-05c8ca4485f8b138a"
	instance_type = "t2.micro"
	key_name = "Suyog"
	tags = {
	    Name = "Trial_instance"
	}
}
