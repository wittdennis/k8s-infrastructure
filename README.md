# k8s-infrastructure

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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_control_nodes"></a> [control\_nodes](#module\_control\_nodes) | ./modules/compute | n/a |
| <a name="module_loadbalancer"></a> [loadbalancer](#module\_loadbalancer) | ./modules/loadbalancer | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |
| <a name="module_ssh_keys"></a> [ssh\_keys](#module\_ssh\_keys) | ./modules/ssh_key | n/a |
| <a name="module_worker_nodes"></a> [worker\_nodes](#module\_worker\_nodes) | ./modules/compute | n/a |

## Resources

| Name | Type |
|------|------|
| [hcloud_firewall.firewall_control_plane](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall) | resource |
| [hcloud_firewall.firewall_worker](https://registry.terraform.io/providers/hetznercloud/hcloud/latest/docs/resources/firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hcloud_token"></a> [hcloud\_token](#input\_hcloud\_token) | Hetzner API token. | `string` | `""` | no |
| <a name="input_location"></a> [location](#input\_location) | The datacenter resources should be created at. | `string` | `"fsn1"` | no |
| <a name="input_server_image"></a> [server\_image](#input\_server\_image) | The image to use for new server provisioning. | `string` | `"fedora-39"` | no |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | List of ssh keys to add to newly provisioned servers. | `list(string)` | <pre>[<br>  "~/.ssh/id_private.pub"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_control_nodes_public_ipv4"></a> [control\_nodes\_public\_ipv4](#output\_control\_nodes\_public\_ipv4) | n/a |
| <a name="output_control_nodes_public_ipv6"></a> [control\_nodes\_public\_ipv6](#output\_control\_nodes\_public\_ipv6) | n/a |
| <a name="output_loadbalancer_ipv4"></a> [loadbalancer\_ipv4](#output\_loadbalancer\_ipv4) | n/a |
| <a name="output_loadbalancer_ipv6"></a> [loadbalancer\_ipv6](#output\_loadbalancer\_ipv6) | n/a |
| <a name="output_worker_nodes_public_ipv4"></a> [worker\_nodes\_public\_ipv4](#output\_worker\_nodes\_public\_ipv4) | n/a |
| <a name="output_worker_nodes_public_ipv6"></a> [worker\_nodes\_public\_ipv6](#output\_worker\_nodes\_public\_ipv6) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
