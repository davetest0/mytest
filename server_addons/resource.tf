provider "aws" {
        region = "us-west-2"
}

resource "aws_s3_bucket" "s3_bucket_created_via_tf" {
	bucket = "s3-bucket-created-via-tf"
	acl = "private"

	tags {
		Name = "My Bucket"
		Environment = "SBX"
             }
}
resource "aws_efs_file_system" "my_efs" {
  creation_token = "myefs"

  tags {
    Name = "Shared between all servers"
  }
}
