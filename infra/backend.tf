$content = @'
# Backend disabled - using local state for now
# Uncomment below once Azure storage account is created
#
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "tfstate-rg"
#     storage_account_name = "tfstateapim001"
#     container_name       = "tfstate"
#     key                  = "apim.terraform.tfstate"
#   }
# }
'@
[System.IO.File]::WriteAllText("$PWD\infra\backend.tf", $content, [System.Text.Encoding]::ASCII)