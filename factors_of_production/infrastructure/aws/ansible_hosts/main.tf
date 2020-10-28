data "template_file" "host" {
  template = "${var.host}"
}

resource "null_resource" "provisioner" {
  provisioner "local-exec" {
    command = "echo \"${data.template_file.host.rendered}\" >> ${var.path}"
  }
}