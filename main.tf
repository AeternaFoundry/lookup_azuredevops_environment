data "azuredevops_environment" "environment_lookup" {
  for_each = var.environment_lookup

  project_id     = each.value.project_id
  environment_id = each.value.environment_id
  name           = each.value.name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

