module "vnet" {
  source = "./modules/vnet"
  region = var.region
  resource_group_name = var.resource_group_name
  name = var.vnet_name
  cidr = var.vnet_cidr
}

module "subnets" {
  source = "./modules/subnet"
  resource_group_name = var.resource_group_name
  vnet_name = var.vnet_name
  names_list = var.subnets_names_list
  cidr_list = var.subnets_cidr_list
  vnet_id = "${module.vnet.vnet_id}"
}