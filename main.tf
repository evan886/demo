resource "aws_s3_bucket" "evan" {
  bucket = "evan-example-bucket-for-terraform"
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.evan.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [ aws_s3_bucket_ownership_controls.example ]

  bucket = aws_s3_bucket.evan.id
  acl = "private"
  
}
