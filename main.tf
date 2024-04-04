terraform {
  encryption {
    state {
      enforced = true
    }
    plan {
      enforced = true
    }
  }
}

resource "local_file""hello_local_file" {
  content = "Hello terraform local!"
  filename = "${path.module}/hello_local_file.txt"
}
