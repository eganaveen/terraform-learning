variable "demo1" {
  default = {
    String = "hello"
    number = 100
    boolean = true
  }
}
output "output1" {
  value = var.demo1.number
}