
# #Key Vault 
#key_vault_name               = "mkvykkd"
# enable_logs_to_storage       = "true"
# enable_logs_to_log_analytics = "true"
# reader_objects_ids           = ["43321196-db9a-489f-8b81-87b44baa565a"]
# admin_objects_ids            = ["06d9f967-bff7-497c-929b-98e43ae7e90c"]


# access_policies = [
#   {
#     object_id               = "06d9f967-bff7-497c-929b-98e43ae7e90c"
#     certificate_permissions = ["Get", "List"]
#     key_permissions         = ["Get", "List"]
#     secret_permissions      = ["Get", "List"]
#     storage_permissions     = ["List"]
#   }
# ]
# # readersaccess_policies = [
# #   {
# #     object_id               = "43321196-db9a-489f-8b81-87b44baa565a"
# #     certificate_permissions = ["Get", "List"]
# #     key_permissions         = ["Get", "List"]
# #     secret_permissions      = ["Get", "List"]
# #     storage_permissions     = ["List"]
# #   }
# # ]

# #postfix& environments& localtion
prefix = "md"
environment = "test"

#tags
tags = {
  project     = "md"
  environment = "dev"
  owners      = "dk"
}
