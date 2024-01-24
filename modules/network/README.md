# network

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.5 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | >= 1.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.45.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [hcloud_network.network](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network) | resource |
| [hcloud_network_subnet.subnet](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/network_subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ip_range"></a> [ip\_range](#input\_ip\_range) | The CIDR notation of the network | `string` | `"10.0.0.0/8"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name the network should have | `string` | `""` | no |
| <a name="input_network_zone"></a> [network\_zone](#input\_network\_zone) | The network zone of the subnet | `string` | `"eu-central"` | no |
| <a name="input_subnet_ip_range"></a> [subnet\_ip\_range](#input\_subnet\_ip\_range) | The CIDR notation of the subnet must be inside the ip range of the network | `string` | `"10.96.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_id"></a> [subnet\_id](#output\_subnet\_id) | n/a |
| <a name="output_subnet_ip_range"></a> [subnet\_ip\_range](#output\_subnet\_ip\_range) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
