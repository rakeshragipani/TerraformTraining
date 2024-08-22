resource "azurerm_resource_group" "myterraformgroup1" {
name = "admatic-rgabxrg-1"
location = local.regionasia
}
resource "azurerm_resource_group" "myterraformgroup2" {
name = "admatic-rgabxrg-2"
location = local.regionasia
}
resource "azurerm_resource_group" "myterraformgroup3" {
name = "admatic-rgabxrg-3"
location = local.regionasia
}
locals {
hello = "world"
a = 100
b = 200
regionasia = "eastasia"

}

locals {
a_string = "Robochef is an automated robotic kitchen"
a_number = 15
b_number = 30
absum = local.a_number + local.b_number
}

output "robochef_val" {
value = local.a_string
}

locals {
demomap = {
name = "Saravanans"
location = "chennnai"
nation = "India"
}
}
output "robochef_map" {
value = tomap(local.demomap)
}
output "demos" {
value = "sum is ${local.absum}"
}