# compute

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
| [hcloud_load_balancer_target.lb_target_node](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/load_balancer_target) | resource |
| [hcloud_server.node](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server) | resource |
| [hcloud_server_network.node_network](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/server_network) | resource |
| [hcloud_ssh_key.keys](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/ssh_key) | resource |
| [random_pet.node_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amount"></a> [amount](#input\_amount) | Number of compute nodes to provision. | `number` | `1` | no |
| <a name="input_delete_protection"></a> [delete\_protection](#input\_delete\_protection) | Flag to control if the resources should have delete protection on. | `bool` | `false` | no |
| <a name="input_firewall_ids"></a> [firewall\_ids](#input\_firewall\_ids) | Ids of the firewalls the nodes should be behind. | `set(number)` | `[]` | no |
| <a name="input_image"></a> [image](#input\_image) | OS image to use for the provisioned nodes. | `string` | n/a | yes |
| <a name="input_ipv4_enabled"></a> [ipv4\_enabled](#input\_ipv4\_enabled) | Flag indicating if a ipv4 should be provisioned for the nodes. | `bool` | `true` | no |
| <a name="input_ipv6_enabled"></a> [ipv6\_enabled](#input\_ipv6\_enabled) | Flag indicating if a ipv6 should be provisioned for the nodes. | `bool` | `true` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to give the provisioned nodes. | `map(string)` | `{}` | no |
| <a name="input_load_balancer_id"></a> [load\_balancer\_id](#input\_load\_balancer\_id) | Id of the loadbalancer the nodes should be attached to. | `number` | `0` | no |
| <a name="input_location"></a> [location](#input\_location) | The location the nodes should be provisioned in. | `string` | n/a | yes |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | The name prefix a provisioned node should have. | `string` | n/a | yes |
| <a name="input_server_type"></a> [server\_type](#input\_server\_type) | Type of node to provision. | `string` | n/a | yes |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | List of ssh keys that should be added on provision. | `list(string)` | `[]` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Id of the subnet the nodes should be added to. | `string` | `""` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | cloud-config.yaml to automate first time setup. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | n/a |
| <a name="output_node_id"></a> [node\_id](#output\_node\_id) | n/a |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | n/a |
| <a name="output_public_ipv4"></a> [public\_ipv4](#output\_public\_ipv4) | n/a |
| <a name="output_public_ipv6"></a> [public\_ipv6](#output\_public\_ipv6) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
