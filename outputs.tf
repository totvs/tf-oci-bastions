output "bastion_id" {
  description = "OCID do Bastion criado."
  value       = oci_bastion_bastion.this.id
}

output "bastion_name" {
  description = "Nome do Bastion criado."
  value       = oci_bastion_bastion.this.name
}

output "target_subnet_id" {
  description = "OCID da subnet alvo associada ao Bastion."
  value       = oci_bastion_bastion.this.target_subnet_id
}
