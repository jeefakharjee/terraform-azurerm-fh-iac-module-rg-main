variable "location" {
  description = "Azure region to use."
  type        = string
}

variable "rg_name" {
  description = "Resource Group name used in naming."
  type        = string
}

variable "lock_level" {
  description = "Specifies the Level to be used for this RG Lock. Possible values are Empty (no lock), `CanNotDelete` and `ReadOnly`."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags to add."
  type        = map(string)
}