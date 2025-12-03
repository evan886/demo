resource "aws_s3_bucket" "east" {
  bucket = "evan-example-bucket-for-terraform"

  tags = {
    Enviroment = "production"
    CreatedBy = "terraform"
  }
  lifecycle {
    ignore_changes = [ tags ]
  }
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.evan.id
  rule {
     object_ownership = "BucketOwnerPreferred"
  }
}




