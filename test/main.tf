provider "azurerm" {
  subscription_id = var.subscription_id
}

terraform {
  backend "azurerm" {
  }
}
module "network" {
  source  = "../"
  region = "westeurope"
  resource_group_name = "mviac-platform-tests-tf-module-network"
  vnet_name = "mviac-platform-tests-tf-module-network-vnet"
  vnet_cidr = "10.227.0.0/16"
  subnets_names_list = ["platformtestsubnet"]
  subnets_cidr_list = ["10.227.5.0/24"]
}