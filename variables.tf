variable "compartment_id" {
  description = "OCID do compartimento onde o Bastion será criado."
  type        = string
}

variable "target_subnet_id" {
  description = "OCID da subnet alvo onde o Bastion terá acesso."
  type        = string
}

variable "client_cidr_block_allow_list" {
  description = <<EOT
Lista de blocos CIDR permitidos para acessar o Bastion.
Por padrão, permite acesso de qualquer IP (0.0.0.0/0).
ATENÇÃO: Por segurança, sobrescreva este valor para restringir o acesso conforme sua política.
EOT
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "freeform_tags" {
  description = "Mapa de tags livres para padronização e identificação de recursos."
  type        = map(string)
  default     = {}
}
