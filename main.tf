resource "azurerm_resource_group" "rgtest" {
  name     = "testresources"
  location = var.primary_location
}

resource "azurerm_storage_account" "stracctest" {
  name                     = "teststorageaccahlens"
  resource_group_name      = azurerm_resource_group.rgtest.name
  location                 = azurerm_resource_group.rgtest.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = var.appinsght_resources_tags
}
