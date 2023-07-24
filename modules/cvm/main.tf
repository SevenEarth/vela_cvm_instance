data "tencentcloud_availability_zones" "zones" {}

data "tencentcloud_images" "image" {
  image_type       = ["PUBLIC_IMAGE"]
  image_name_regex = "Final"
}

data "tencentcloud_instance_types" "instance_types" {
  filter {
    name   = "instance-family"
    values = ["S5"]
  }

  cpu_core_count   = 2
  exclude_sold_out = true
}

resource "tencentcloud_instance" "cvm_postpaid" {
  instance_name           = var.instance_name
  availability_zone       = data.tencentcloud_availability_zones.zones.zones.0.name
  image_id                = data.tencentcloud_images.image.images.0.image_id
  instance_type           = data.tencentcloud_instance_types.instance_types.instance_types.0.instance_type
  system_disk_type        = var.system_disk_type
  system_disk_size        = var.system_disk_size
  hostname                = var.hostname
  project_id              = var.project_id
  vpc_id                  = var.vpc_id
  subnet_id               = var.subnet_id
  orderly_security_groups = var.orderly_security_groups

  data_disks {
    data_disk_type = var.data_disk_type
    data_disk_size = var.data_disk_size
    encrypt        = var.encrypt
  }

  tags = var.tags
}