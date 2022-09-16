output "ip_address" {
  value = aws_instance.jenkins.public_ip
}

output "web_address" {
  value = "${aws_instance.jenkins.public_dns}:8080"
}
