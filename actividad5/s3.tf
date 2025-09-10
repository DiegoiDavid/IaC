resource "random_id" "bucket_suflix" {
 byte_length = 7
}

resource "aws_s3_bucket" "alediego_bucket" {
    bucket = "alediego-bucket-${random_id.bucket_suflix.hex}"
  
}

output "bucket_name" {
    value = aws_s3_bucket.alediego_bucket.bucket
}
