# Terraform Module: OCI Bastion Service

Este módulo oficial TOTVS provê o provisionamento do serviço nativo [OCI Bastion Service](https://docs.oracle.com/en-us/iaas/Content/Bastion/home.htm) na Oracle Cloud Infrastructure (OCI).

## Recursos Criados
- `oci_bastion_bastion` (tipo: STANDARD)

## Variáveis de Entrada

| Variável                     | Tipo           | Obrigatório | Descrição                                                                                 |
|-----------------------------|----------------|-------------|------------------------------------------------------------------------------------------|
| `compartment_id`            | `string`       | Sim         | OCID do compartimento onde o Bastion será criado.                                        |
| `target_subnet_id`          | `string`       | Sim         | OCID da subnet alvo onde o Bastion terá acesso.                                          |
| `client_cidr_block_allow_list` | `list(string)` | Não (default: ["0.0.0.0/0"]) | Lista de blocos CIDR permitidos para acessar o Bastion. **Recomenda-se sobrescrever!** |
| `freeform_tags`             | `map(string)`  | Não         | Mapa de tags livres para padronização e identificação de recursos.                       |

## Outputs

| Output             | Descrição                                      |
|--------------------|------------------------------------------------|
| `bastion_id`       | OCID do Bastion criado.                        |
| `bastion_name`     | Nome do Bastion criado.                        |
| `target_subnet_id` | OCID da subnet alvo associada ao Bastion.      |

## Exemplo de Uso

```hcl
module "oci_bastion" {
  source                     = "github.com/totvs/terraform-oci-bastion"
  compartment_id             = var.compartment_id
  target_subnet_id           = var.target_subnet_id
  client_cidr_block_allow_list = ["192.168.0.0/24"] # Recomenda-se restringir!
  freeform_tags = {
    Environment = "dev"
    Owner       = "infra-team"
  }
}
```

## Referências
- [Documentação Oficial OCI Bastion](https://docs.oracle.com/en-us/iaas/Content/Bastion/home.htm)
- [Resource: oci_bastion_bastion](https://registry.terraform.io/providers/oracle/oci/latest/docs/resources/bastion_bastion)

---
Módulo mantido por TOTVS | [github.com/totvs](https://github.com/totvs)
