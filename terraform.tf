resource "dns_cname_record" "cname" {
  count      = length(local.cnames)
  cname      = "${local.a_record}.${var.domain}."
  name       = local.cnames[count.index]
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
