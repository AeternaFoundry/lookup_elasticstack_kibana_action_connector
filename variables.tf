variable "kibana_action_connector_lookup" {
  description = <<EOT
Map of kibana_action_connector_lookup, attributes below
Required:
    - name
Optional:
    - connector_type_id
    - space_id
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    name              = string
    connector_type_id = optional(string)
    space_id          = optional(string)
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

