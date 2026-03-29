resource "azurerm_virtual_network" "vnets" {
  name                = "vnet-terraform-demo"
  address_space       = ["10.0.0.0/16"]
    location            = azurerm_resource_group.name.location
    resource_group_name = azurerm_resource_group.name.name
}

resource "azurerm_subnet" "subnets" {
  name                 = "subnet-terraform-demo"
  resource_group_name  = azurerm_resource_group.name.name
  virtual_network_name = azurerm_virtual_network.vnets.name
  address_prefixes     = ["10.0.1.0/24"]
}