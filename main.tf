locals {
  relay_namespaces = { for k1, v1 in var.relay_namespaces : k1 => { location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, sku_name = v1.sku_name, tags = v1.tags } }

  relay_hybrid_connections = merge([
    for k1, v1 in var.relay_namespaces : {
      for k2, v2 in coalesce(v1.relay_hybrid_connections, {}) :
      "${k1}/${k2}" => merge(v2, {
        relay_namespace_name = module.relay_namespaces.relay_namespaces["${k1}"].name
      })
    }
  ]...)
}

module "relay_namespaces" {
  source           = "git::https://github.com/AeternaModules/azurerm_relay_namespace.git?ref=v4.80.0"
  relay_namespaces = local.relay_namespaces
}

module "relay_hybrid_connections" {
  source                   = "git::https://github.com/AeternaModules/azurerm_relay_hybrid_connection.git?ref=v4.80.0"
  relay_hybrid_connections = local.relay_hybrid_connections
  depends_on               = [module.relay_namespaces]
}

