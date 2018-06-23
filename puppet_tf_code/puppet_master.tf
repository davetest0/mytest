provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "puppetmaster" {
  ami           = "ami-3ecc8f46"
  instance_type = "t2.micro"
  key_name = "mypersonalec2"
tags {
	"Creation_Order" = "2"
	"Server_role"    = "PuppetMaster"
}
}

