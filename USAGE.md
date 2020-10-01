## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12 |
| aws | ~> 2.13 |
| local | ~> 1.2 |
| random | ~> 2.1 |
| template | ~> 2.1 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.13 |
| http | n/a |
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cidr\_block | The CIDR block range to use for the OpenVPN VPC | `string` | `"10.0.0.0/16"` | no |
| ec2\_username | The user to connect to the EC2 as | `string` | `"ec2-user"` | no |
| file\_ovpn | The name of the .ovpn file for VPN authentication | `string` | `"username.ovpn"` | no |
| instance\_root\_block\_device\_volume\_size | The size of the root block device volume of the EC2 instance in GiB | `number` | `8` | no |
| instance\_type | The instance type to use | `string` | `"t2.micro"` | no |
| openvpn\_install\_script\_location | The location of an OpenVPN installation script compatible with https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh | `string` | `"https://raw.githubusercontent.com/dumrauf/openvpn-install/master/openvpn-install.sh"` | no |
| ovpn\_config\_directory | The name of the directory to eventually download the OVPN configuration files to | `string` | `"generated/ovpn-config"` | no |
| ovpn\_users | The list of users to automatically provision with OpenVPN access | `list(string)` | n/a | yes |
| profile | The profile to use | `any` | n/a | yes |
| region | The AWS region to use | `string` | `"us-west-1"` | no |
| shared\_credentials\_file | The location of the AWS shared credentials file (e.g. ~dominic/.aws/credentials) | `any` | n/a | yes |
| ssh\_private\_key\_file | The private SSH key used to connect to the EC2 instance | `string` | `"/config/openvpn"` | no |
| ssh\_public\_key\_file | The public SSH key to store in the EC2 instance | `string` | `"/config/openvpn.pub"` | no |
| tag\_name | The name to tag AWS resources with | `string` | `"OpenVPN"` | no |

## Outputs

| Name | Description |
|------|-------------|
| connection\_string | Copy/Paste/Enter - You are in the matrix |
| ec2\_instance\_dns | DNS name of the EC2 instance |
| ec2\_instance\_ip | IP address of the EC2 instance |
| scp\_copy\_ovpm | Will copy the ssh key to connect to VPN from the VPN server to the local current directory |
| start\_vpm | Assuming you have OpenVPN installed locally (on a mac), this will connect you to the VPN |

## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.12 |
| aws | ~> 2.13 |
| local | ~> 1.2 |
| random | ~> 2.1 |
| template | ~> 2.1 |

## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.13 |
| http | n/a |
| null | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cidr\_block | The CIDR block range to use for the OpenVPN VPC | `string` | `"10.0.0.0/16"` | no |
| ec2\_username | The user to connect to the EC2 as | `string` | `"ec2-user"` | no |
| file\_ovpn | The name of the .ovpn file for VPN authentication | `string` | `"username.ovpn"` | no |
| instance\_root\_block\_device\_volume\_size | The size of the root block device volume of the EC2 instance in GiB | `number` | `8` | no |
| instance\_type | The instance type to use | `string` | `"t2.micro"` | no |
| openvpn\_install\_script\_location | The location of an OpenVPN installation script compatible with https://raw.githubusercontent.com/angristan/openvpn-install/master/openvpn-install.sh | `string` | `"https://raw.githubusercontent.com/dumrauf/openvpn-install/master/openvpn-install.sh"` | no |
| ovpn\_config\_directory | The name of the directory to eventually download the OVPN configuration files to | `string` | `"generated/ovpn-config"` | no |
| ovpn\_users | The list of users to automatically provision with OpenVPN access | `list(string)` | n/a | yes |
| profile | The profile to use | `any` | n/a | yes |
| region | The AWS region to use | `string` | `"us-west-1"` | no |
| shared\_credentials\_file | The location of the AWS shared credentials file (e.g. ~dominic/.aws/credentials) | `any` | n/a | yes |
| ssh\_private\_key\_file | The private SSH key used to connect to the EC2 instance | `string` | `"/config/openvpn"` | no |
| ssh\_public\_key\_file | The public SSH key to store in the EC2 instance | `string` | `"/config/openvpn.pub"` | no |
| tag\_name | The name to tag AWS resources with | `string` | `"OpenVPN"` | no |

## Outputs

| Name | Description |
|------|-------------|
| connection\_string | Copy/Paste/Enter - You are in the matrix |
| ec2\_instance\_dns | DNS name of the EC2 instance |
| ec2\_instance\_ip | IP address of the EC2 instance |
| scp\_copy\_ovpm | Will copy the ssh key to connect to VPN from the remote VPN server to the local current directory |
| start\_vpm | Assuming you have OpenVPN installed locally (on a mac), this will connect you to the VPN |

