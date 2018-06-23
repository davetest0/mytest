provider "aws" {
        region = "us-west-2"
}

resource "aws_s3_bucket" "s3_bucket_created_via_tf" {
	bucket = "s3_bucket_created_via_tf"
	acl = "private"

	tags {
		Name = "My Bucket"
		Environment = "SBX"
             }
}
