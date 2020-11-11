# terraform slide 69

module "create_password" {
  source = "git::git@github.com:FrameworkTrainingTeam/terraform-examples.git//terraform-course-snippets/modules/create_password"

  length      = var.password_length
  min_numeric = var.password_min_numeric
}

