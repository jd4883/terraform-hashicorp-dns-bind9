variable "domain" { type = string }
variable "records" { type = list(string) }
variable "private_ip" { type = string }

variable "ttl" {
  type    = number
  default = 3600
}

