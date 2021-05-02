resource "dns_cname_record" "cname" {
  for_each = local.cnames
  cname      = "${local.a_record}.${var.domain}."
  name       = each.value
  zone       = "${var.domain}."
  ttl        = var.ttl
  depends_on = [dns_a_record_set.a]
}

resource "dns_a_record_set" "a" {
  addresses = [var.private_ip]
  zone      = "${var.domain}."
  name      = local.a_record
  ttl       = var.ttl
}
