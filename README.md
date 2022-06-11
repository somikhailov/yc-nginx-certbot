# yc-nginx-certbot

This project contains code for creating `nginx` server with `letsencrypt` certificate in `yandex cloud` with `terraform` and `ansible`. 

---

## Usage

copy example and set your variables
```
cp terraform.tfvars.example terraform.tfvars
```
| Name                         | Description                                                                | Example                                  |
| ---------------------------- | -------------------------------------------------------------------------- | ---------------------------------------- |
| yc_token                     | https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token        | AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA  |
| yc_cloud_id                  | https://cloud.yandex.ru/docs/resource-manager/operations/cloud/switch-cloud| b1gg8sgd16g7qch5onqs                     |
| yc_folder_id                 | https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id     | b1gd129pp9ha0vnvf5g7                     |
| ssh_pub                      | path to your ssh public ssh key                                            | ~/.ssh/id_rsa.pub                        |
| ssh_key                      | path to your ssh private ssh key                                           | ~/.ssh/id_rsa                            |
| yc_dns_zone_name             | dns zone (need create in yandex cloud before deploying project)            | somikhailov-fun                          |
| yc_dns_record_name           | dns record name in tour dns zone                                           | test (none FQDN)                         |
| email                        | your email for getting letsencrypt certificate                             | test@example.com                         |

for running 
```bash
terraform init
terraform plan
terraform apply -auto-approve
```

for destroying
```bash
terraform destroy -auto-approve
```

---
## Installation

* terraform - [https://learn.hashicorp.com/tutorials/terraform/install-cli](https://learn.hashicorp.com/tutorials/terraform/install-cli).
* yandex.cloud provider - [https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs).
* yandex cli - [https://cloud.yandex.ru/docs/cli/operations/install-cli](https://cloud.yandex.ru/docs/cli/operations/install-cli).
* ansible - [https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## License
[MIT](https://choosealicense.com/licenses/mit/)