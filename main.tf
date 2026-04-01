terraform {
  required_version = ">= 1.0.0"

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = ">= 4.0.0"
    }
  }
}

resource "oci_bastion_bastion" "this" {
  compartment_id                = var.compartment_id
  bastion_type                  = "STANDARD"
  target_subnet_id              = var.target_subnet_id
  client_cidr_block_allow_list  = var.client_cidr_block_allow_list
  freeform_tags                 = var.freeform_tags

  # Opcional: nome do bastion, pode ser customizado via tags ou variável extra
  # display_name                = var.display_name
}
