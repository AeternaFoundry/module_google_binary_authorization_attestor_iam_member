variable "binary_authorization_attestor_iam_members" {
  description = <<EOT
Map of binary_authorization_attestor_iam_members, attributes below
Required:
    - attestor
    - member
    - role
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    attestor = string
    member   = string
    role     = string
    project  = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

