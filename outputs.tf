output "catapp_url" {
  value = [for eip in aws_eip.hashicat : "http://${eip.public_dns}"]
  # value = "http://${aws_eip.hashicat.public_dns}"
}

output "catapp_ip" {
  value = [for eip in aws_eip.hashicat : "http://${eip.public_ip}"]
}
