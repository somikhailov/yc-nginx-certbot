data "yandex_dns_zone" "zone" {
  name = var.dns_zone
}

resource "yandex_dns_recordset" "app" {
  zone_id = data.yandex_dns_zone.zone.id
  name    = var.dns_name
  type    = "A"
  ttl     = 200
  data    = [yandex_compute_instance.vm.network_interface.0.nat_ip_address]
}