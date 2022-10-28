terraform {
	backend "s3" {
		bucket = "suyogs31990"
		key = "terraform/remotestate/terraform.tfstate"
		region = "ap-south-1"
		
		dynamodb_table = "suyogdb"
		encrypt = true
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
