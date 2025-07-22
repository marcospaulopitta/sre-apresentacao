resource "random_id" "bucket_suffix" {
  byte_length = 4

  keepers = {
    always_new = timestamp()
  }
}
