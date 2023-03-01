resource "azurerm_stream_analytics_job" "stream_analytics" {
  count                                    = var.AzureStreamAnalytics ? 1 : 0
  name                = "${var.Prefix}-${var.stream_analytics_name}-${var.environment}"
  resource_group_name                      = var.resource_group_name
  location                                 = var.location
  compatibility_level                      = var.compatibility_level
  data_locale                              = "en-GB"
  events_late_arrival_max_delay_in_seconds = var.events_late_arrival
  events_out_of_order_max_delay_in_seconds = var.events_out_of_order
  events_out_of_order_policy               = var.events_out_of_order_policy
  output_error_policy                      = var.output_error_policy
  streaming_units                          = var.streaming_units

  # tags = var.tags 

  transformation_query = <<QUERY
    SELECT *
    INTO [YourOutputAlias]
    FROM [YourInputAlias]
QUERY

}