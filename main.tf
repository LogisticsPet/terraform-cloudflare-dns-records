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

resource "random_string" "suffix" {
  length = 4
  lower  = true
  special = false
}


resource "cloudflare_record" "record" {
  for_each = {
    for r in local.record_set : r.value => r
  }
  zone_id  = data.cloudflare_zone.zone.id
  name     = "${var.domain}-ns-${random_string.suffix.result}"
  type     = each.value.type
  value    = each.value.value
}
