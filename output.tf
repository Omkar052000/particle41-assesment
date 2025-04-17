output "load_balancer_dns" {
  description = "Access the service at this URL"
  value       = aws_lb.app_alb.dns_name
}
