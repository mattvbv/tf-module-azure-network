output "vnet_id" {
  # module dependency workaround
  value = "${azurerm_virtual_network.vnet.id}"
}