resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
   
   tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }


}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network
  address_space       = ["10.0.0.0/16"]
  location            = "westus2"
  resource_group_name = azurerm_resource_group.rg.name
}


