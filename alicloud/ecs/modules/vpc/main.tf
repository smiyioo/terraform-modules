terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = "1.213.1"
    }
  }
}

resource "alicloud_vpc" "vpc_example" {
  vpc_name    = var.vpc_name
  description = "Alicloud VPC example"
  cidr_block  = "172.16.0.0/12"
}

data "alicloud_zones" "zones" {
  available_resource_creation = "VSwitch"
}

resource "alicloud_vswitch" "vswitch_example" {
  vswitch_name = var.vswitch_name
  description  = "Alicloud VSwitch example"
  cidr_block   = "172.16.0.0/20"
  vpc_id       = alicloud_vpc.vpc_example.id
  zone_id      = data.alicloud_zones.zones.zones.0.id
}

variable "vpc_name" {
  type        = string
  description = "Alicloud VPC name"
  default     = "vpc_example"
}

variable "vswitch_name" {
  type        = string
  description = "Alicloud VSwitch name"
  default     = "vswitch_example"
}

output "vpc_id" {
  value = alicloud_vpc.vpc_example.id
}

output "vswitch_id" {
  value = alicloud_vswitch.vswitch_example.id
}

data "alicloud_vswitches" "vswitch_example" {
  name_regex = alicloud_vswitch.vswitch_example.vswitch_name
}

output "vswitch_zone_id" {
  value = data.alicloud_vswitches.vswitch_example.vswitches.0.zone_id
}
