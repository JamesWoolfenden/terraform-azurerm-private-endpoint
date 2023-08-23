

resource "azurerm_private_endpoint" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = var.name
    private_connection_resource_id = azurerm_private_link_service.example.id
    is_manual_connection           = false
  }
}
