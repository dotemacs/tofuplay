terraform {
  backend "http" {
    address        = "https://api.tfstate.dev/github/v1"
    lock_address   = "https://api.tfstate.dev/github/v1/lock"
    unlock_address = "https://api.tfstate.dev/github/v1/lock"
    lock_method    = "PUT"
    unlock_method  = "DELETE"
    username       = "dotemacs/tofuplay"
  }
}

  resource "local_file""hello_local_file" {
    content = "Hello terraform local!"
    filename = "${path.module}/hello_local_file.txt"
  }
