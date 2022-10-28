resource "aws_instance" "instance-ec2" {
	ami = "ami-05c8ca4485f8b138a"
	instance_type = "t2.micro"
	key_name = "Suyog"
	tags = {
			Name = "Trial_instance"
	}
}
terraform {
  backend "local" {
     path = "terraform.tfstate.d/dev"
  }
}
