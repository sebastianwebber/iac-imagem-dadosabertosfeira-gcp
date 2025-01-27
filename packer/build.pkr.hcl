build {
  sources = ["sources.googlecompute.imagem-base-orquestradores"]

  provisioner "ansible" {
    galaxy_file          = "/workspace/ansible/requirements.yml"
    galaxy_force_install = true

    playbook_file        = "/workspace/ansible/playbook.yml"
    ansible_env_vars     = ["ANSIBLE_REMOTE_TMP=/tmp/.ansible/tmp", ]

    user                 = var.config_gcp.usuario_ssh

    // extra_arguments = ["-vvvv"]
  }
}
