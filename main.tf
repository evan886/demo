# variable "aws_region" {
#   type = string
#   default = "ap-east-1"
# }


#bucket 1
resource "aws_s3_bucket" "for_each_demo" {
  for_each = var.bucket_names
  bucket =each.value

  tags   = {
    Name = " ${each.key}-dev-buckups"
    Environment = "Dev"
  }
}



