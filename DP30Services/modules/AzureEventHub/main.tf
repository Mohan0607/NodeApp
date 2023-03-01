
resource "azurerm_eventhub_namespace" "eh_ns" {
  count               = var.AzureEventHub  ? 1 : 0 
  name                = "${var.Prefix}-evnthubns-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  capacity            = var.capacity

  #tags = var.tags
}

resource "azurerm_eventhub" "eventh" {
  count               = var.AzureEventHub ? 1 : 0 
  name                = "${var.Prefix}-${var.eventhub_name}-${var.environment}"
  namespace_name      = azurerm_eventhub_namespace.eh_ns[count.index].name
  resource_group_name = var.resource_group_name
  partition_count     = var.partition_count
  message_retention   = var.message_retention
}