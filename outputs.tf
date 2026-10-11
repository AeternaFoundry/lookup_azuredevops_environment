output "environment_lookup_id" {
  description = "Map of id values across all environment_lookup, keyed the same as var.environment_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "environment_lookup_description" {
  description = "Map of description values across all environment_lookup, keyed the same as var.environment_lookup except keys with no description are omitted"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "environment_lookup_environment_id" {
  description = "Map of environment_id values across all environment_lookup, keyed the same as var.environment_lookup except keys with no environment_id are omitted"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.environment_id if v.environment_id != null }
}
output "environment_lookup_name" {
  description = "Map of name values across all environment_lookup, keyed the same as var.environment_lookup except keys with no name are omitted"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "environment_lookup_project_id" {
  description = "Map of project_id values across all environment_lookup, keyed the same as var.environment_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

