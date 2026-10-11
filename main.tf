data "datadog_metrics" "metrics_lookup" {
  for_each = var.metrics_lookup

  query = each.value.query
}

