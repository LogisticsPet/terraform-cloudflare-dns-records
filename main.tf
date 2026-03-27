locals {
  record_set = flatten([
    for record_type, record_values in var.records : [
      for record_value in record_values : {
        type  = record_type
        value = record_value
      }
    ]
  ])
}

resource "cloudflare_dns_record" "record" {
  for_each = {
    for r in local.record_set : r.value => r
  }

  zone_id = data.cloudflare_zone.zone.id
  name    = var.domain
  type    = each.value.type
  content = each.value.value
  ttl     = 3600
}
