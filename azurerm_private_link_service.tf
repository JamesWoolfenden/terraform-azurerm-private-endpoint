resource "azurerm_private_link_service" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name

  nat_ip_configuration {
    name      = azurerm_public_ip.example.name
    primary   = true
    subnet_id = var.subnet_id
  }

  load_balancer_frontend_ip_configuration_ids = [
    azurerm_lb.example.frontend_ip_configuration.0.id,
  ]
}
