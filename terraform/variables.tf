variable "aws_access_key" {
  description = "Chave de acesso AWS"
  type        = string
}

variable "aws_secret_key" {
  description = "Chave secreta AWS"
  type        = string
}

variable "key_name" {
  description = "Nome do par de chaves EC2"
  type        = string
  default     = "unidavi-terraform"
}
