variable "customname" {}
output "zcustomname_output" {
  value = var.customname
}

variable "customname_auto" {}
output "customname_auto" {
  value = var.customname_auto
}

variable "terraform_var" {}
output "terraform_var" {
  value = var.terraform_var
}

variable "CLI_VAR" {}
output "ZCLI_VAR" {
  value = var.CLI_VAR
}