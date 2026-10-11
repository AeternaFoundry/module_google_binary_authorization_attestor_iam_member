resource "google_binary_authorization_attestor_iam_member" "binary_authorization_attestor_iam_members" {
  for_each = var.binary_authorization_attestor_iam_members

  attestor = each.value.attestor
  member   = each.value.member
  role     = each.value.role
  project  = each.value.project

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

