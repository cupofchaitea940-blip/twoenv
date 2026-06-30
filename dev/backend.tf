terraform {
  backend "azurerm" {
    resource_group_name  = "jenkins-rg"
    storage_account_name = "tanyastorage11111"
    container_name       = "devnew"
    key                  = "terraform.tfstate"
  }
}