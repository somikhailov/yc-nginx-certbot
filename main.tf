module "yc-instance" {
  source = "./terraform/modules/app"

  yc_zone  = "ru-central1-a"
  ssh_pub  = var.ssh_pub
  ssh_key  = var.ssh_key
  dns_zone = var.yc_dns_zone_name
  dns_name = var.yc_dns_record_name
}

module "ansible_provision" {
  source = "./terraform/modules/ansible_provision"

  ansible_inventory_template = "ansible/inventory.tmpl"
  ansible_inventory          = "ansible/inventory.ini"
  ansible_playbook_template  = "ansible/site.tmpl"
  ansible_playbook           = "ansible/site.yml"
  ansible_hosts = {
    app = module.yc-instance.name_ip
  }
  ssh_key     = var.ssh_key
  user        = "ubuntu"
  email       = var.email
  domain_name = module.yc-instance.domain_name
}