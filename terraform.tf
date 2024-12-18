terraform {
  required_version = "1.10.3"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.48.0"
    }
  }
}
