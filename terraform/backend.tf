terraform {
  backend "s3" {}
}

# O versionamento deve ser ativado manualmente no bucket de backend do S3.
# Exemplo de recurso (caso queira gerenciar pelo Terraform):

resource "aws_s3_bucket_versioning" "statefile_versioning" {
  bucket = "bucket-armazenamento-terraform" # substitua pelo nome do bucket de backend
  versioning_configuration {
    status = "Enabled"
  }
}
