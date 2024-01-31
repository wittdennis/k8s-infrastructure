resource "random_uuid" "ssh_key_name" {
  count = length(var.ssh_keys)
}

resource "hcloud_ssh_key" "this" {
  count      = length(var.ssh_keys)
  name       = random_uuid.ssh_key_name[count.index].id
  public_key = file(var.ssh_keys[count.index])
}
