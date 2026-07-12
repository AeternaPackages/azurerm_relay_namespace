# --- azurerm_relay_namespace ---
output "relay_namespaces_location" {
  description = "Map of location values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_location
}

output "relay_namespaces_metric_id" {
  description = "Map of metric_id values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_metric_id
}

output "relay_namespaces_name" {
  description = "Map of name values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_name
}

output "relay_namespaces_primary_connection_string" {
  description = "Map of primary_connection_string values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_primary_connection_string
  sensitive   = true
}

output "relay_namespaces_primary_key" {
  description = "Map of primary_key values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_primary_key
  sensitive   = true
}

output "relay_namespaces_resource_group_name" {
  description = "Map of resource_group_name values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_resource_group_name
}

output "relay_namespaces_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_secondary_connection_string
  sensitive   = true
}

output "relay_namespaces_secondary_key" {
  description = "Map of secondary_key values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_secondary_key
  sensitive   = true
}

output "relay_namespaces_sku_name" {
  description = "Map of sku_name values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_sku_name
}

output "relay_namespaces_tags" {
  description = "Map of tags values across all relay_namespaces, keyed the same as var.relay_namespaces"
  value       = module.relay_namespaces.relay_namespaces_tags
}

# --- azurerm_relay_hybrid_connection ---
output "relay_hybrid_connections_name" {
  description = "Map of name values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = module.relay_hybrid_connections.relay_hybrid_connections_name
}

output "relay_hybrid_connections_relay_namespace_name" {
  description = "Map of relay_namespace_name values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = module.relay_hybrid_connections.relay_hybrid_connections_relay_namespace_name
}

output "relay_hybrid_connections_requires_client_authorization" {
  description = "Map of requires_client_authorization values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = module.relay_hybrid_connections.relay_hybrid_connections_requires_client_authorization
}

output "relay_hybrid_connections_resource_group_name" {
  description = "Map of resource_group_name values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = module.relay_hybrid_connections.relay_hybrid_connections_resource_group_name
}

output "relay_hybrid_connections_user_metadata" {
  description = "Map of user_metadata values across all relay_hybrid_connections, keyed the same as var.relay_hybrid_connections"
  value       = module.relay_hybrid_connections.relay_hybrid_connections_user_metadata
}


