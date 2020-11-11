# terraform slide 63

locals {
  project = "learn-tf"
  prefix  = "${var.environment}-${local.project}"
}

resource "random_string" "password" {
  length      = 10
  min_numeric = var.password_min_numeric
}

resource "null_resource" "sleep" {
  provisioner "local-exec" {
    command = "sleep 10"
  }

  triggers = {
    always_run = timestamp()
  }
}