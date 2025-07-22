resource "random_id" "bucket_suffix" {
  byte_length = 4
  keepers = {
    always_new = timestamp()
  }
}

locals {
  bucket_name = "${var.prefixo}-${random_id.bucket_suffix.hex}"
}

resource "aws_s3_bucket" "bucket" {
  bucket = local.bucket_name

  lifecycle {
    precondition {
      condition     = length(local.bucket_name) <= 63
      error_message = "O nome do bucket deve ter no máximo 63 caracteres."
    }
  }
}
