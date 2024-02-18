output "tags" {
  value = var.additional == "null" ? local.default_tags : merge(local.default_tags, var.custom_tags)
}
