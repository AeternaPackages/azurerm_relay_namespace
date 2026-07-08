# --- azurerm_relay_namespace ---
output "relay_namespaces" {
  description = "All relay_namespace resources"
  value       = module.relay_namespaces.relay_namespaces
  sensitive   = true
}
output "relay_namespaces_location" {
  description = "List of location values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.location]
}
output "relay_namespaces_metric_id" {
  description = "List of metric_id values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.metric_id]
}
output "relay_namespaces_name" {
  description = "List of name values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.name]
}
output "relay_namespaces_primary_connection_string" {
  description = "List of primary_connection_string values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.primary_connection_string]
  sensitive   = true
}
output "relay_namespaces_primary_key" {
  description = "List of primary_key values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.primary_key]
  sensitive   = true
}
output "relay_namespaces_resource_group_name" {
  description = "List of resource_group_name values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.resource_group_name]
}
output "relay_namespaces_secondary_connection_string" {
  description = "List of secondary_connection_string values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.secondary_connection_string]
  sensitive   = true
}
output "relay_namespaces_secondary_key" {
  description = "List of secondary_key values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.secondary_key]
  sensitive   = true
}
output "relay_namespaces_sku_name" {
  description = "List of sku_name values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.sku_name]
}
output "relay_namespaces_tags" {
  description = "List of tags values across all relay_namespaces"
  value       = [for k, v in module.relay_namespaces.relay_namespaces : v.tags]
}


# --- azurerm_relay_hybrid_connection ---
output "relay_hybrid_connections" {
  description = "All relay_hybrid_connection resources"
  value       = module.relay_hybrid_connections.relay_hybrid_connections
}
output "relay_hybrid_connections_name" {
  description = "List of name values across all relay_hybrid_connections"
  value       = [for k, v in module.relay_hybrid_connections.relay_hybrid_connections : v.name]
}
output "relay_hybrid_connections_relay_namespace_name" {
  description = "List of relay_namespace_name values across all relay_hybrid_connections"
  value       = [for k, v in module.relay_hybrid_connections.relay_hybrid_connections : v.relay_namespace_name]
}
output "relay_hybrid_connections_requires_client_authorization" {
  description = "List of requires_client_authorization values across all relay_hybrid_connections"
  value       = [for k, v in module.relay_hybrid_connections.relay_hybrid_connections : v.requires_client_authorization]
}
output "relay_hybrid_connections_resource_group_name" {
  description = "List of resource_group_name values across all relay_hybrid_connections"
  value       = [for k, v in module.relay_hybrid_connections.relay_hybrid_connections : v.resource_group_name]
}
output "relay_hybrid_connections_user_metadata" {
  description = "List of user_metadata values across all relay_hybrid_connections"
  value       = [for k, v in module.relay_hybrid_connections.relay_hybrid_connections : v.user_metadata]
}



