data "cloudflare_zone" "zone" {
  name = var.root_domain
}
