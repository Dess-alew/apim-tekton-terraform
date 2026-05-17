$content = @'
output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "apim_gateway_url" {
  value = azurerm_api_management.apim.gateway_url
}

output "apim_portal_url" {
  value = azurerm_api_management.apim.developer_portal_url
}
'@
[System.IO.File]::WriteAllText("$PWD\infra\outputs.tf", $content, [System.Text.Encoding]::ASCII)