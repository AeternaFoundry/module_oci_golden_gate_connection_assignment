resource "oci_golden_gate_connection_assignment" "golden_gate_connection_assignments" {
  for_each = var.golden_gate_connection_assignments

  connection_id    = each.value.connection_id
  deployment_id    = each.value.deployment_id
  is_lock_override = each.value.is_lock_override

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

