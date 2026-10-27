output "environment_lookup_id" {
  description = "Map of id values across all environment_lookup, keyed the same as var.environment_lookup"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.id }
}
output "environment_lookup_description" {
  description = "Map of description values across all environment_lookup, keyed the same as var.environment_lookup"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.description }
}
output "environment_lookup_environment_id" {
  description = "Map of environment_id values across all environment_lookup, keyed the same as var.environment_lookup"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.environment_id }
}
output "environment_lookup_name" {
  description = "Map of name values across all environment_lookup, keyed the same as var.environment_lookup"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.name }
}
output "environment_lookup_project_id" {
  description = "Map of project_id values across all environment_lookup, keyed the same as var.environment_lookup"
  value       = { for k, v in data.azuredevops_environment.environment_lookup : k => v.project_id }
}

