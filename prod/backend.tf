terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins-rg"
    storage_account_name = "tanyastorage11111"
    container_name       = "prod1"
    key                  = "terraform.tfstate"
  }
}