resource "aws_s3_bucket" "b" {
  bucket = "tita-tf-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
