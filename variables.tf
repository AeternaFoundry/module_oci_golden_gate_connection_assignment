variable "golden_gate_connection_assignments" {
  description = <<EOT
Map of golden_gate_connection_assignments, attributes below
Required:
    - connection_id
    - deployment_id
Optional:
    - is_lock_override
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    connection_id    = string
    deployment_id    = string
    is_lock_override = optional(bool)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

