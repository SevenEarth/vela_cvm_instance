variable "vpc_name" {
  type        = string
  default     = "tf-vpc"
  description = "vpc name."
}

variable "vpc_cidr_block" {
  type        = string
  default     = "10.2.0.0/16"
  description = "vpc cidr block."
}

variable "availability_zone" {
  type        = string
  description = "availability zone."
}

variable "subnet_name" {
  type        = string
  default     = "tf-as-subnet"
  description = "subnet name."
}

variable "subnet_cidr_block" {
  type        = string
  default     = "10.2.11.0/24"
  description = "subnet cidr block."
}
