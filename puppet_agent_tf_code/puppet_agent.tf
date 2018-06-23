provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "puppetagent" {
  ami           = "ami-3ecc8f46"
  instance_type = "t2.micro"
  key_name = "mypersonalec2"
tags {
	"Creation_Order" = "3"
	"Server_role"    = "PuppetAgent"
}
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.puppetagent.id}"
}
