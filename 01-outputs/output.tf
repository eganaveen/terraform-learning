variable "demo1" {
  default = "demo1"
  integer = 100
}
output "output1" {
  value = var.demo1
}