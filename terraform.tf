terraform {
  required_version = "1.14.9"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "5.19.0"
    }
  }
}
