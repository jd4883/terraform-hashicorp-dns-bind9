locals {
  a_record = var.records.0
  cnames   = toset([for x in var.records : x if ! contains([local.a_record], x)])
}
