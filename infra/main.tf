$content = @'
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}

resource "azurerm_api_management" "apim" {
  name                = var.apim_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email
  sku_name            = "Consumption_0"
  tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}
'@
[System.IO.File]::WriteAllText("$PWD\infra\main.tf", $content, [System.Text.Encoding]::ASCII)