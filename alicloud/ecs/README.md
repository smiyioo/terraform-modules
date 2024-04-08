## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | 1.213.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | 1.213.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [alicloud_instance.ecs](https://registry.terraform.io/providers/aliyun/alicloud/1.213.1/docs/resources/instance) | resource |
| [alicloud_images.images_ds](https://registry.terraform.io/providers/aliyun/alicloud/1.213.1/docs/data-sources/images) | data source |
| [alicloud_instance_types.types_ds](https://registry.terraform.io/providers/aliyun/alicloud/1.213.1/docs/data-sources/instance_types) | data source |
| [alicloud_security_groups.default](https://registry.terraform.io/providers/aliyun/alicloud/1.213.1/docs/data-sources/security_groups) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cpu_core_count"></a> [cpu\_core\_count](#input\_cpu\_core\_count) | The CPU core of the ECS instance, value range: [1, 208] | `number` | `2` | no |
| <a name="input_image_regex"></a> [image\_regex](#input\_image\_regex) | The image regex of the image used to launch the ECS instance, refer to https://help.aliyun.com/zh/ecs/user-guide/release-notes-for-2023 | `string` | `"^ubuntu_22"` | no |
| <a name="input_init_script"></a> [init\_script](#input\_init\_script) | User-defined init script to customize the startup behaviors of the ECS instance and to pass data into the ECS instance, aka user\_data | `string` | `"#!/bin/bash\napt update\n"` | no |
| <a name="input_instance_name"></a> [instance\_name](#input\_instance\_name) | The instance name and hostname of the ECS instance | `string` | n/a | yes |
| <a name="input_internet_charge_type"></a> [internet\_charge\_type](#input\_internet\_charge\_type) | The billing method of the public network bandwidth, valid values are PayByBandwidth, PayByTraffic | `string` | `"PayByTraffic"` | no |
| <a name="input_internet_max_bandwidth_out"></a> [internet\_max\_bandwidth\_out](#input\_internet\_max\_bandwidth\_out) | The maximum outbound bandwidth of the public network, larger than 0 can allocate a public ip address for an instance, value range: [0, 100] | `number` | `10` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Name of the ssh private key, must already exist | `string` | `"seal-alicloud-shenzhen"` | no |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | The memory size of the ECS instance, value range: [0.5, 1, 3072] | `number` | `4` | no |
| <a name="input_system_disk_category"></a> [system\_disk\_category](#input\_system\_disk\_category) | The category of the system disk, valid values are ephemeral\_ssd, cloud\_efficiency, cloud\_ssd, cloud\_essd, cloud\_auto | `string` | `"cloud_efficiency"` | no |
| <a name="input_system_disk_size"></a> [system\_disk\_size](#input\_system\_disk\_size) | The size of the system disk, value range: [20, 500] | `number` | `40` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cpu"></a> [cpu](#output\_cpu) | n/a |
| <a name="output_key_name"></a> [key\_name](#output\_key\_name) | n/a |
| <a name="output_memory"></a> [memory](#output\_memory) | n/a |
| <a name="output_os_name"></a> [os\_name](#output\_os\_name) | n/a |
| <a name="output_os_type"></a> [os\_type](#output\_os\_type) | n/a |
| <a name="output_primary_ip_address"></a> [primary\_ip\_address](#output\_primary\_ip\_address) | n/a |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | n/a |
