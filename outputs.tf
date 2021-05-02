output "cname_records" { value = toset(dns_cname_record.cname.*) }
output "a_records" { value = toset(dns_a_record_set.a.*) }
