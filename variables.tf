variable "domain" {
  type        = string
  description = "Root application domain name"
}

variable "records" {
  type = map(list(string))
  description = "List of dns records to create"
}
