terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tanyastorage11111"
    container_name       = "dev"
    key                  = "terraform.tfstate"
  }
}