output "ec2_instance_dns" {
  description = "DNS name of the EC2 instance"
  value       = aws_instance.openvpn.public_dns
}

output "ec2_instance_ip" {
  description = "IP address of the EC2 instance"
  value       = aws_instance.openvpn.public_ip
}

output "connection_string" {
  description = "Copy/Paste/Enter - You are in the matrix"
  value       = "ssh -i ${var.ssh_private_key_file} ${var.ec2_username}@${aws_instance.openvpn.public_dns}"
}

output "scp_copy_ovpm" {
  description = "Will copy the ssh key to connect to VPN from the remote VPN server to the local current directory"
  value       = "scp -i ${var.ssh_private_key_file} ${var.ec2_username}@${aws_instance.openvpn.public_dns}:${var.file_ovpn} ."
}

output "start_vpm" {
  description = "Assuming you have OpenVPN installed locally (on a mac), this will connect you to the VPN"
  value       = "sudo openvpn --config generated/ovpn-config/${var.file_ovpn}"
}