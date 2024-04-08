output "public_ip" {
  value = alicloud_instance.ecs.public_ip
}

output "primary_ip_address" {
  value = alicloud_instance.ecs.primary_ip_address
}

output "os_type" {
  value = alicloud_instance.ecs.os_type
}

output "os_name" {
  value = alicloud_instance.ecs.os_name
}

output "cpu" {
  value = alicloud_instance.ecs.cpu
}

output "memory" {
  value = alicloud_instance.ecs.memory
}

output "key_name" {
  value = alicloud_instance.ecs.*.key_name
}
