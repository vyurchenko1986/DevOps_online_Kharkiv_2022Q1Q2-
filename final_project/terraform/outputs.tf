output "dev_server_ip" {
  value = aws_instance.dev_server.public_ip
}

output "dev_server_dns" {
  value = aws_instance.dev_server.public_dns
}

output "prod_server_ip" {
  value = aws_instance.prod_server.public_ip
}

output "prod_server_dns" {
  value = aws_instance.prod_server.public_dns
}
