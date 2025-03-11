output "instance_id" {
  value       = aws_instance.web.id
}

output "private_key" {
  value       = tls_private_key.web_key.private_key_pem
  sensitive   = true
}