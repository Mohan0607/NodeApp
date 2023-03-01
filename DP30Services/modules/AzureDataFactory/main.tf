

#Azure Data Factory
resource "azurerm_data_factory" "az-svc-factory" {
  count               = var.AzureDataFactory ? 1 : 0
  name                = "${var.Prefix}-${var.factory_name}-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

# #Azure Data Factory (w/GIT)
# resource "azurerm_data_factory" "az-svc-factory-git" {
#   count               = var.AzureDataFactory_git ? 1 : 0
#   name                = "${var.factorygit_name}"
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   #tags                = var.az_tags
#   github_configuration {
#     account_name    = var.git_account
#     branch_name     = var.git_branch
#     git_url         = var.git_hostname
#     repository_name = var.git_repo
#     root_folder     = var.git_folder
#   }
# }