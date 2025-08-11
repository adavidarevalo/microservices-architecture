output "email_identity_arn" {
  description = "SES email identity ARN"
  value       = aws_ses_email_identity.email.arn
}

output "email_address" {
  description = "Verified email address"
  value       = aws_ses_email_identity.email.email
}