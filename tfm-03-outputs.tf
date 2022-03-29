output "vnet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.spcc_vnet.id
}

output "vnet_name" {
  description = "The name of the newly created vNet"
  value       = azurerm_virtual_network.spcc_vnet.name
}

output "vnet_location" {
  description = "The location of the newly created vNet"
  value       = azurerm_virtual_network.spcc_vnet.location
}

output "vnet_address_space" {
  description = "The address space of the newly created vNet"
  value       = azurerm_virtual_network.spcc_vnet.address_space
}

output "vnet_subnets" {
  description = "The ids of subnets created inside the newly created vNet"
  value       = azurerm_subnet.spcc_subnet.*.id
}
