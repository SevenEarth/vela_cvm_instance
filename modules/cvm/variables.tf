variable "instance_name" {
  type        = string
  default     = "tf-cvm"
  description = "instance name."
}

variable "system_disk_type" {
  type        = string
  default     = "CLOUD_PREMIUM"
  description = "system disk type."
}

variable "system_disk_size" {
  type        = number
  default     = 50
  description = "system disk size."
}

variable "data_disk_type" {
  type        = string
  default     = "CLOUD_PREMIUM"
  description = "data disk type."
}

variable "data_disk_size" {
  type        = number
  default     = 50
  description = "data disk size."
}

variable "encrypt" {
  type        = bool
  default     = false
  description = "data disk encrypt status."
}

variable "hostname" {
  type        = string
  default     = "example"
  description = "hostname."
}

variable "project_id" {
  type        = number
  default     = 0
  description = "project id."
}

variable "vpc_id" {
  type        = string
  description = "vpc Id."
}

variable "subnet_id" {
  type        = string
  description = "subnet Id."
}

variable "orderly_security_groups" {
  type        = list(string)
  description = "security group list"
}

variable "tags" {
  type    = map(string)
  default = {
    "created" : "tf-cvm-example",
  }
  description = "A mapping of tags to assign to the cvm."
}
