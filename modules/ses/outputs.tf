output "ses_domain_identity_arn" {
  description = "SES domain identity ARN"
  value       = module.ses.ses_domain_identity_arn
}

output "ses_domain_identity_verification_token" {
  description = "SES domain identity verification token"
  value       = module.ses.ses_domain_identity_verification_token
}

output "ses_dkim_tokens" {
  description = "SES DKIM tokens"
  value       = module.ses.ses_dkim_tokens
}