provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "puppetagent" {
  ami           = "ami-3ecc8f46"
  instance_type = "t2.micro"
  key_name = "mypersonalec2"
  provisioner "local-exec" {
     command = "echo ${aws_instance.puppetagent.public_ip} >> $aws_instance_ip_address.txt
  }


tags {
	"Creation_Order" = "3"
	"Server_role"    = "PuppetAgent"
     }
}

