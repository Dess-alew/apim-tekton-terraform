output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
output "apim_gateway_url" {
  value = azurerm_api_management.apim.gateway_url
}