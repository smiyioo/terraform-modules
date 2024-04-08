variable "instance_name" {
  type        = string
  description = "The instance name and hostname of the ECS instance"
}

variable "cpu_core_count" {
  description = "The CPU core of the ECS instance, value range: [1, 208]"
  default     = 2
}

variable "memory_size" {
  description = "The memory size of the ECS instance, value range: [0.5, 1, 3072]"
  default     = 4
}

variable "image_regex" {
  description = "The image regex of the image used to launch the ECS instance, refer to https://help.aliyun.com/zh/ecs/user-guide/release-notes-for-2023"
  default     = "^ubuntu_22"
}

variable "system_disk_category" {
  description = "The category of the system disk, valid values are ephemeral_ssd, cloud_efficiency, cloud_ssd, cloud_essd, cloud_auto"
  default     = "cloud_efficiency"
}

variable "system_disk_size" {
  description = "The size of the system disk, value range: [20, 500]"
  default     = 40
}

variable "internet_charge_type" {
  description = "The billing method of the public network bandwidth, valid values are PayByBandwidth, PayByTraffic"
  default     = "PayByTraffic"
}

variable "internet_max_bandwidth_out" {
  description = "The maximum outbound bandwidth of the public network, larger than 0 can allocate a public ip address for an instance, value range: [0, 100]"
  default     = 10
}

variable "init_script" {
  type        = string
  description = "User-defined init script to customize the startup behaviors of the ECS instance and to pass data into the ECS instance, aka user_data"
  default     = <<-EOT
              #!/bin/bash
              apt update
              EOT
}

variable "key_name" {
  description = "Name of the ssh private key, must already exist"
  default     = "seal-alicloud-shenzhen"
}
