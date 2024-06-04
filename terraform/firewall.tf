resource "hcloud_firewall" "firewall_bastion_ssh" {
  name = "fw-bastion-ssh"

  rule {
    direction   = "in"
    protocol    = "tcp"
    port        = "12458"
    description = "custom ssh"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}

resource "hcloud_firewall" "firewall_wireguard" {
  name = "fw-wireguard"

  rule {
    direction   = "in"
    protocol    = "udp"
    port        = "51820"
    description = "wireguard"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    direction   = "in"
    protocol    = "tcp"
    port        = "443"
    description = "https"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }

  rule {
    direction   = "in"
    protocol    = "tcp"
    port        = "80"
    description = "http"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}

resource "hcloud_firewall" "firewall_worker" {
  name = "fw-worker"

  rule {
    direction   = "in"
    protocol    = "tcp"
    port        = "any"
    description = "private net open"
    source_ips = [
      module.network.subnet_ip_range
    ]
  }

  rule {
    direction   = "in"
    protocol    = "udp"
    port        = "any"
    description = "private net open"
    source_ips = [
      module.network.subnet_ip_range
    ]
  }
}

resource "hcloud_firewall" "firewall_control_plane" {
  name = "fw-control-plane"

  rule {
    direction   = "in"
    protocol    = "tcp"
    port        = "443"
    description = "kube-apiserver"
    source_ips = [
      "172.30.0.0/24",
      "2a01:4f8:c012:f0b3:ac1e::/120"
    ]
  }

  rule {
    direction   = "in"
    protocol    = "tcp"
    port        = "any"
    description = "private net open"
    source_ips = [
      module.network.subnet_ip_range
    ]
  }

  rule {
    direction   = "in"
    protocol    = "udp"
    port        = "any"
    description = "private net open"
    source_ips = [
      module.network.subnet_ip_range
    ]
  }
}
