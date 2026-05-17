$content = @'
terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90"
    }
  }
}
'@
[System.IO.File]::WriteAllText("$PWD\infra\versions.tf", $content, [System.Text.Encoding]::ASCII)