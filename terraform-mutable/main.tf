module "cart" {
  source              = "git::https://github.com/rajashekhar-a/terraform-mutable.git//app-module"
  SPOT_INSTANCE_TYPE  = var.SPOT_INSTANCE_TYPE
  ENV                 = var.ENV
  INSTANCE_TYPE       = var.INSTANCE_TYPE
  SPOT_INSTANCE_COUNT = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT   = var.OD_INSTANCE_COUNT
  COMPONENT           = "catalogue"
  PORT                = 8080
  IS_PRIVATE_LB       = "true"
  LB_RULE_PRIORITY    = 101
}