resource "random_pet" "prefix" {}
resource "azurerm_resource_group" "default" {

name = "${random_pet.prefix.id}-rg"
location = var.location
}
variable "location" {
default = "westus2"
}
variable "appId" {
default = "spn app id" // replace
}
variable "password" {
default = "" //  spn password replace
}
resource "azurerm_kubernetes_cluster" "default" {
name = "${random_pet.prefix.id}-aks"
location = azurerm_resource_group.default.location
resource_group_name = azurerm_resource_group.default.name
dns_prefix = "${random_pet.prefix.id}-k8s"
kubernetes_version = "1.29"

default_node_pool {
name = "default"
node_count = 3
vm_size = "Standard_D2_v2"
os_disk_size_gb = 30
}
service_principal {
client_id = var.appId
client_secret = var.password
}
role_based_access_control_enabled = true
tags = {
environment = "Demo"
}
}