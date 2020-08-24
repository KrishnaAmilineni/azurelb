locals {
  name_prefix = var.name_prefix != "" ? replace(var.name_prefix, "/[a-z0-9]$/", "$0-") : ""

  lb_name = var.lb_name

  ip_name = coalesce(
    var.ip_custom_name,
    "${local.lb_name}-pubip",
  )

  ip_configuration_name = "LoadBalancerFrontEnd"
}
