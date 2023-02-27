variable "root_domain" {
  type        = string
  description = "Root application domain name"
}

variable "domain" {
  type        = string
  description = "Domain name to register records for"
}

variable "records" {
  type        = map(list(string))
  description = "List of DNS records to create"
}
