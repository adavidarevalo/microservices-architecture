variable "domain_name" {
  description = "Domain name for Route53 hosted zone"
  type        = string
  default     = "davidarevalo.info"
}

variable "subdomain" {
  description = "Subdomain for the ALB"
  type        = string
  default     = "services.davidarevalo.info"
}

variable "alb_dns_name" {
  description = "ALB DNS name"
  type        = string
}

variable "alb_zone_id" {
  description = "ALB zone ID"
  type        = string
}