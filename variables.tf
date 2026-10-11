variable "environment_lookup" {
  description = <<EOT
Map of environment_lookup, attributes below
Required:
    - project_id
Optional:
    - environment_id
    - name
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    project_id     = string
    environment_id = optional(number)
    name           = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.environment_lookup : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.environment_lookup : (
        v.environment_id == null || (v.environment_id >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  validation {
    condition = alltrue([
      for k, v in var.environment_lookup : (
        v.name == null || (length(trimspace(v.name)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

