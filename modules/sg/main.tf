resource "tencentcloud_security_group" "security_group" {
  name        = var.sg_name
  description = var.sg_desc
}
