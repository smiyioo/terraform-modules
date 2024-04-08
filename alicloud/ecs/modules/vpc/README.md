## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | 1.213.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | 1.213.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_vpc.vpc_example](https://registry.terraform.io/providers/aliyun/alicloud/1.213.1/docs/resources/vpc) | resource |
| [alicloud_vswitch.vswitch_example](https://registry.terraform.io/providers/aliyun/alicloud/1.213.1/docs/resources/vswitch) | resource |
| [alicloud_vswitches.vswitch_example](https://registry.terraform.io/providers/aliyun/alicloud/1.213.1/docs/data-sources/vswitches) | data source |
| [alicloud_zones.zones](https://registry.terraform.io/providers/aliyun/alicloud/1.213.1/docs/data-sources/zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Alicloud VPC name | `string` | `"vpc_example"` | no |
| <a name="input_vswitch_name"></a> [vswitch\_name](#input\_vswitch\_name) | Alicloud VSwitch name | `string` | `"vswitch_example"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
| <a name="output_vswitch_id"></a> [vswitch\_id](#output\_vswitch\_id) | n/a |
| <a name="output_vswitch_zone_id"></a> [vswitch\_zone\_id](#output\_vswitch\_zone\_id) | n/a |
