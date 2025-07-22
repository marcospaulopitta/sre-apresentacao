resource "aws_s3_bucket" "bucket" {
  bucket = "${var.prefixo}-${random_integer.bucket_suffix.result}"
}
  