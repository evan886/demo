variable "buckets_east" {
  type =  map(string)
  default = {
    "backup-bucket" = "evan-data-backup-bucket-east"
    "terraform-bucket" = "evan-terraform-bucket-east"
  }
}

variable "buckets_west" {
  type =  map(string)
  default = {
    "backup-bucket" = "evan-data-backup-bucket-west"
    "terraform-bucket" = "evan-terraform-bucket-west"
  }
}













variable "aws_region" {
  type = string
  default = "ap-east-1"
}

variable "bucket_names" {
  type = set(string)
  default = [ 
    "myevan-for-each-bucket-1",
    "myevan-for-each-bucket-2"
  ]
}

variable "buckets_map" {
  type = map(string)
  default = {
    "name" = "value"
  }
}








variable "env" {
  type    = string
  default = "dev"
}

variable "project_name" {
  type    = string
  default = "my-cool-project "
}