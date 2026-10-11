output "binary_authorization_attestor_iam_members_id" {
  description = "Map of id values across all binary_authorization_attestor_iam_members, keyed the same as var.binary_authorization_attestor_iam_members except keys with no id are omitted"
  value       = { for k, v in google_binary_authorization_attestor_iam_member.binary_authorization_attestor_iam_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "binary_authorization_attestor_iam_members_attestor" {
  description = "Map of attestor values across all binary_authorization_attestor_iam_members, keyed the same as var.binary_authorization_attestor_iam_members except keys with no attestor are omitted"
  value       = { for k, v in google_binary_authorization_attestor_iam_member.binary_authorization_attestor_iam_members : k => v.attestor if v.attestor != null && length(v.attestor) > 0 }
}
output "binary_authorization_attestor_iam_members_condition" {
  description = "Map of condition values across all binary_authorization_attestor_iam_members, keyed the same as var.binary_authorization_attestor_iam_members except keys with no condition are omitted"
  value       = { for k, v in google_binary_authorization_attestor_iam_member.binary_authorization_attestor_iam_members : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "binary_authorization_attestor_iam_members_etag" {
  description = "Map of etag values across all binary_authorization_attestor_iam_members, keyed the same as var.binary_authorization_attestor_iam_members except keys with no etag are omitted"
  value       = { for k, v in google_binary_authorization_attestor_iam_member.binary_authorization_attestor_iam_members : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "binary_authorization_attestor_iam_members_member" {
  description = "Map of member values across all binary_authorization_attestor_iam_members, keyed the same as var.binary_authorization_attestor_iam_members except keys with no member are omitted"
  value       = { for k, v in google_binary_authorization_attestor_iam_member.binary_authorization_attestor_iam_members : k => v.member if v.member != null && length(v.member) > 0 }
}
output "binary_authorization_attestor_iam_members_project" {
  description = "Map of project values across all binary_authorization_attestor_iam_members, keyed the same as var.binary_authorization_attestor_iam_members except keys with no project are omitted"
  value       = { for k, v in google_binary_authorization_attestor_iam_member.binary_authorization_attestor_iam_members : k => v.project if v.project != null && length(v.project) > 0 }
}
output "binary_authorization_attestor_iam_members_role" {
  description = "Map of role values across all binary_authorization_attestor_iam_members, keyed the same as var.binary_authorization_attestor_iam_members except keys with no role are omitted"
  value       = { for k, v in google_binary_authorization_attestor_iam_member.binary_authorization_attestor_iam_members : k => v.role if v.role != null && length(v.role) > 0 }
}

