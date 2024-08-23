module "azure_linuxvm" {
source = "../modules/vm"
location = "westus"
rgsuffix = "fromModuleDemo"
ssh_user = "rakesh"
}

module "azure_storage" {
    source = "../modules/storage"
  
}
locals {
sshuname = "rakesh"

}