resource "azurerm_public_ip" "example" {
  name                = var.name
  sku                 = "Standard"
  location            = var.location
  resource_group_name = var.rg_name
  allocation_method   = "Static"
}
