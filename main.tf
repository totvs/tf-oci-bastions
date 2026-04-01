resource "oci_bastion_bastion" "this" {
  compartment_id                = each.value.bastion_compartment_id
  target_subnet_id              = each.value.bastion_target_subnet_id
  client_cidr_block_allow_list  = each.value.bastion_client_cidr_block_allow_list
  freeform_tags                 = each.value.bastion_freeform_tags
  # display_name                = each.value.display_name # se quiser customizar
}


