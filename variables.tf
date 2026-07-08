variable "relay_namespaces" {
  description = <<EOT
Map of relay_namespaces, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku_name
Optional:
    - tags
Nested relay_hybrid_connections (azurerm_relay_hybrid_connection):
    Required:
        - name
        - resource_group_name
    Optional:
        - requires_client_authorization
        - user_metadata
EOT

  type = map(object({
    location            = string
    name                = string
    resource_group_name = string
    sku_name            = string
    tags                = optional(map(string))
    relay_hybrid_connections = optional(map(object({
      name                          = string
      resource_group_name           = string
      requires_client_authorization = optional(bool) # Default: true
      user_metadata                 = optional(string)
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.relay_namespaces) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.relay_namespaces : [for kk in keys(coalesce(v0.relay_hybrid_connections, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
