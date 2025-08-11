variable "domain" {
  description = "Domain name for SES"
  type        = string
  default     = "gmail.com"
}

variable "zone_id" {
  description = "Route53 zone ID"
  type        = string
  default     = null
}

variable "verify_dkim" {
  description = "Whether to verify DKIM"
  type        = bool
  default     = false
}

variable "verify_domain" {
  description = "Whether to verify domain"
  type        = bool
  default     = false
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
}