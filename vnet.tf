resource "azurerm_virtual_network" "vnets" {
  name                = "vnet-terraform-demo"
  address_space       = ["10.0.0.0/16"]
    location            = azurerm_resource_group.name.location
    resource_group_name = azurerm_resource_group.name.name
}