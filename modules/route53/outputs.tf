output "route53_record_name" {
  description = "Route53 record name"
  value       = aws_route53_record.alb.name
}

output "route53_record_fqdn" {
  description = "Route53 record FQDN"
  value       = aws_route53_record.alb.fqdn
}