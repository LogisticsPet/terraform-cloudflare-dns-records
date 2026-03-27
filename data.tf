data "cloudflare_zone" "zone" {
  filter = {
    name = var.root_domain
  }
}
