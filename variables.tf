variable "common_tags" {
  description = "This is to help you add tags to your cloud objects"
  type        = map(any)
}

variable "rg_name" {
  type = string
}

variable "subnet_id" {
  type        = string
  description = ""
}

variable "location" {
  type        = string
  description = ""
}

variable "name" {
  type        = string
  description = ""
}
