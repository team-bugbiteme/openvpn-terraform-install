output "ec2_instance_dns" {
  value = aws_instance.openvpn.public_dns
}

output "ec2_instance_ip" {
  value = aws_instance.openvpn.public_ip
}

output "connection_string" {
  value = "'ssh -i ${var.ssh_private_key_file} ${var.ec2_username}@${aws_instance.openvpn.public_dns}'"
}

output "scp_copy_ovpm" {
  value = "'scp -i ${var.ssh_private_key_file} ${var.ec2_username}@${aws_instance.openvpn.public_dns}:${var.file_ovpn} .'"
}

output "start_vpm" {
  value = "'sudo openvpn --config generated/ovpn-config/${var.file_ovpn}'"
}