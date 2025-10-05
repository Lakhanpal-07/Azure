terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "ca3ed185-7d95-4b2b-bd90-809c951a6611"
}
resource "azurerm_resource_group" "rg" {
  name     = "rg-2"
  location = "West Europe"
}
