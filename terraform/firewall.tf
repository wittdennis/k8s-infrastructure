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
    port        = "6443"
    description = "kube-apiserver"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
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

  rule {
    direction   = "in"
    protocol    = "tcp"
    port        = "10260"
    description = "cert-manager-webhook"
    source_ips = [
      "0.0.0.0/0",
      "::/0"
    ]
  }
}
