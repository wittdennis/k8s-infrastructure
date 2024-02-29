# loadbalancer

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
| [hcloud_load_balancer.lb](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/load_balancer) | resource |
| [hcloud_load_balancer_network.lb_net](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/load_balancer_network) | resource |
| [random_pet.lb_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_delete_protection"></a> [delete\_protection](#input\_delete\_protection) | Controls whether the loadbalancer should be provisioned with delete protection enabled | `string` | `false` | no |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Type of the load balancer to provison | `string` | `"lb11"` | no |
| <a name="input_location"></a> [location](#input\_location) | The datacenter the load balancer should be provisioned in | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the load balancer | `string` | `""` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Id of the subnet the load balancer should be added to | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_loadbalancer_id"></a> [loadbalancer\_id](#output\_loadbalancer\_id) | n/a |
| <a name="output_loadbalancer_ipv4"></a> [loadbalancer\_ipv4](#output\_loadbalancer\_ipv4) | n/a |
| <a name="output_loadbalancer_ipv6"></a> [loadbalancer\_ipv6](#output\_loadbalancer\_ipv6) | n/a |
| <a name="output_loadbalancer_name"></a> [loadbalancer\_name](#output\_loadbalancer\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
