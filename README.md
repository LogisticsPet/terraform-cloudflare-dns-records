## Introduction
Terraform module to create DNS records in cloudflare zone

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.record](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_zone.zone](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | Domain name to register records for | `string` | n/a | yes |
| <a name="input_records"></a> [records](#input\_records) | List of DNS records to create | `map(list(string))` | n/a | yes |
| <a name="input_root_domain"></a> [root\_domain](#input\_root\_domain) | Root application domain name | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
