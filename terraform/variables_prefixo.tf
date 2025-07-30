variable "prefixo" {
  type = string

  validation {
    condition     = can(regex("^[a-z0-9.-]+$", var.prefixo))
    error_message = "O prefixo só pode conter letras minúsculas, números, pontos e hífens."
  }

  validation {
    condition     = length(var.prefixo) <= 53
    error_message = "O prefixo deve ter no máximo 53 caracteres para garantir que o nome final do bucket não ultrapasse 63 caracteres."
  }
}
