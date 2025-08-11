variable "email_address" {
  description = "Email address to verify with SES"
  type        = string
}

variable "common_tags" {
  description = "Common tags to be applied to all resources"
  type        = map(string)
}