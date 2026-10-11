variable "metrics_lookup" {
  description = <<EOT
Map of metrics_lookup, attributes below
Required:
    - query
EOT

  type = map(object({
    query = string
  }))
}

