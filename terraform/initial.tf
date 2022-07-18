
provider "aws" {
	profile = "default"
	region = "eu-west-2"
}

resource "aws_instance" "example" {
	ami = "ami-0fb391cce7a602d1f"
	instance_type = "t2.micro"
}
