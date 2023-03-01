
#Azure Sql Server 
resource "azurerm_sql_server" "example" {
  count                        = var.AzureSqlServer ? 1 : 0
  name                = "${var.Prefix}-${var.sql_server_name}-${var.environment}"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sql_version
  administrator_login          = var.sql_administrator_login
  administrator_login_password = var.sql_administrator_login_password
  #tags = var.tags
}

resource "azurerm_sql_database" "example" {
  count               = var.AzureSqlServer ? 1 : 0
  name                = "${var.Prefix}${var.sql_database_name}${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = azurerm_sql_server.example[count.index].name
  edition             = var.edition
  collation           = var.collation
  #tags = var.tags
  # create_mode                      = var.create_mode
  #requested_service_objective_name = var.requested_service_objective_name
}


resource "azurerm_sql_firewall_rule" "example" {
  count               = var.AzureSqlServer ? 1 : 0
  name                = var.sql_firewall_rule_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_sql_server.example[count.index].name
  start_ip_address    = var.start_ip_address
  end_ip_address      = var.end_ip_address
}