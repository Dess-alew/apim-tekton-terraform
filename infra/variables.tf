$content = @'
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "apim-dev-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "apim_name" {
  description = "Globally unique name for APIM"
  type        = string
  default     = "my-apim-dev-001"
}

variable "publisher_name" {
  description = "Publisher name for APIM"
  type        = string
  default     = "My Organization"
}

variable "publisher_email" {
  description = "Publisher email for APIM"
  type        = string
  default     = "admin@myorg.com"
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}
'@
[System.IO.File]::WriteAllText("$PWD\infra\variables.tf", $content, [System.Text.Encoding]::ASCII)