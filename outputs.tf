output "cname_records" { value = dns_cname_record.cname.* }
output "a_records" { value = dns_a_record_set.a.* }
