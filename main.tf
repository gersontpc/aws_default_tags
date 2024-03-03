output "tags" {
  value = var.additional_tags == "null" ? local.default_tags : merge(local.default_tags, var.additional_tags)
}
