resource "azurerm_resource_group" "rg" {
  name = "rakesh${random_string.rs.id }"
  #location = "westus"
  location = var.resource_location

}
resource "random_string" "rs" {
  special = false
  length = 9
}