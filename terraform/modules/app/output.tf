output "name_ip" {
  value = {
    "${yandex_compute_instance.vm.name}" = "${yandex_compute_instance.vm.network_interface.0.nat_ip_address}"
  }
}

output "domain_name" {
  value = trimsuffix("${yandex_dns_recordset.app.name}.${data.yandex_dns_zone.zone.zone}", ".")
}