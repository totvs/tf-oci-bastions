output "bastion_ids" {
  description = "Mapa com os OCIDs dos Bastions criados."
  value       = { for k, v in oci_bastion_bastion.this : k => v.id }
}

output "bastion_names" {
  description = "Mapa com os nomes dos Bastions criados."
  value       = { for k, v in oci_bastion_bastion.this : k => v.name }
}

output "target_subnet_ids" {
  description = "Mapa com os OCIDs das subnets alvo associadas aos Bastions."
  value       = { for k, v in oci_bastion_bastion.this : k => v.target_subnet_id }
}
