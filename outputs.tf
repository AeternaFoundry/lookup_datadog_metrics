output "metrics_lookup_id" {
  description = "Map of id values across all metrics_lookup, keyed the same as var.metrics_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_metrics.metrics_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metrics_lookup_metrics" {
  description = "Map of metrics values across all metrics_lookup, keyed the same as var.metrics_lookup except keys with no metrics are omitted"
  value       = { for k, v in data.datadog_metrics.metrics_lookup : k => v.metrics if v.metrics != null && length(v.metrics) > 0 }
}
output "metrics_lookup_query" {
  description = "Map of query values across all metrics_lookup, keyed the same as var.metrics_lookup except keys with no query are omitted"
  value       = { for k, v in data.datadog_metrics.metrics_lookup : k => v.query if v.query != null && length(v.query) > 0 }
}

