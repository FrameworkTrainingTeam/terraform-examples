terraform {
  backend "remote" {
    organization = "frameworktraining"

    workspaces {
      prefix  = "tftraining-"
    }
  }
}