resource "azurerm_subnet" "subnet" {
  name                      = "${var.names_list[count.index]}"
  virtual_network_name      =  var.vnet_name
  resource_group_name       =  var.resource_group_name
  address_prefix            = "${var.cidr_list[count.index]}"
  #network_security_group_id = "${lookup(var.nsg_ids,var.names_list[count.index],"")}"
  count                     = "${length(var.names_list)}"
  depends_on = [var.vnet_id]
}