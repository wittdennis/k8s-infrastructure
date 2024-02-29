# ssh_key

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.5 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.45.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 3.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.45.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_ssh_key.this](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/ssh_key) | resource |
| [random_uuid.ssh_key_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | List of ssh keys that should be added on provision. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssh_key_ids"></a> [ssh\_key\_ids](#output\_ssh\_key\_ids) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
