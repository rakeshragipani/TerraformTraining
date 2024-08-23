resource "null_resource" "copy_file" {
provisioner "file" {
source = "data.txt"
destination = "/tmp/mydata-new.txt"
}
connection {
type = "ssh"
host = module.azure_linuxvm.vm_public_ip
user = local.sshuname
password = module.azure_linuxvm.ssh_password
port = 22
agent = false
}
}