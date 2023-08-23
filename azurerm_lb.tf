


resource "azurerm_lb" "example" {
  name                = "example-lb"
  sku                 = "Standard"
  location            = var.location
  resource_group_name = var.rg_name

  frontend_ip_configuration {
    name                 = azurerm_public_ip.example.name
    public_ip_address_id = azurerm_public_ip.example.id
  }
}
