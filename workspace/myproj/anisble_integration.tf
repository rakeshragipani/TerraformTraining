resource "null_resource" "remote-provisioner" {
provisioner "remote-exec" {
inline = [

"echo Remote Provisioner did this >> /tmp/remoteexec.txt",
"touch /tmp/terraform_generated_file.txt",
"sudo apt update",
"sh /tmp/robochef_stack.sh"
]

}

connection {
type = "ssh"
host = module.azure_linuxvm.vm_public_ip
user = local.sshuname
password = module.azure_linuxvm.ssh_password
port = 22
agent = false
}
depends_on = [module.azure_linuxvm]
}