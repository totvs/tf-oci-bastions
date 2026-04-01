resource "oci_bastion_bastion" "this" {
  for_each = var.oci_bastions

  name                         = each.key
  bastion_type                 = each.value.bastion_type
  compartment_id               = each.value.bastion_compartment_id
  target_subnet_id             = each.value.bastion_target_subnet_id
  client_cidr_block_allow_list = each.value.bastion_client_cidr_block_allow_list
  freeform_tags                = try(each.value.bastion_freeform_tags, null)
  defined_tags                 = try(each.value.bastion_defined_tags, null)
}
