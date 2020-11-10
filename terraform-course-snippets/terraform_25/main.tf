# terraform slide 25

resource "random_string" "password" {
  length      = 10
  min_numeric = 4
}