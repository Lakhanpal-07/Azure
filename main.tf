terraform {
  #configure the azure required provider
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
}

#configure the azure provider
provider "azurerm" {
  features {}
  subscription_id = "ca3ed185-7d95-4b2b-bd90-809c951a6611"
}
#variables used in the script
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westus2"

  tags = {
    Environment = "Terraform Getting Started"
    Team        = "DevOps"
  }
}



