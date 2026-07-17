locals {
  web_instance_name = "${var.prefix}-${var.environment}-${var.vm_web_role}"
  db_instance_name  = "${var.prefix}-${var.environment}-${var.vm_db_role}"
}