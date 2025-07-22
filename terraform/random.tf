# (arquivo agora vazio, pois random_id já está definido em main.tf)
  byte_length = 4

  keepers = {
    always_new = timestamp()
  }
}
