variable "demo1" {
  default = {
    String = "hello",
    int = 111,
    boolean = true
  }
}
output "output1" {
  value = var.demo1.boolean
}

variable "demo2" {
  default = [
    "hello",
    999,
    false
  ]
}
output "listout" {
  value = var.demo2[2]
}