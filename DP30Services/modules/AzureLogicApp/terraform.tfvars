
#Azure Logic App plan 
logic_app_name         = "poclg"
lgstorage_account_name = "lgstor"
app_service_plan_name  = "dev-logic-app-plan"

#postfix& environments& localtion
prefix = "md"
#location=""
environment = "test"

#tags
tags = {
  project     = "md"
  environment = "dev"
  owners      = "dk"
}
