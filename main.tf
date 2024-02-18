output "tags" {
  value = var.custom_tags == "null" ? local.default_tags : merge(local.default_tags, var.custom_tags)
}
