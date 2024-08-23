resource "random_string" "datagen" {
length = 6
}
resource "random_integer" "rint" {
min = 10
max = 90
}
resource "null_resource" "local-execprovis" {
triggers = {
trigger = local.flag
}
provisioner "local-exec" {
command = "echo Remote Robochef Provisioner did this >> /tmp/remoteexec.txt"
}
}
locals {
flag = "63"
}