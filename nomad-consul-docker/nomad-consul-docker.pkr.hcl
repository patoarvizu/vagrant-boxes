source "vagrant" "nomad-consul-docker" {
  communicator = "ssh"
  source_path = "bento/ubuntu-20.04"
  provider = "virtualbox"
}

build {
  sources = ["source.vagrant.nomad-consul-docker"]

  provisioner "shell" {
    script = "provision.sh"
  }
}