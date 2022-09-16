# AWS Resources configured with Terraform
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.jenkins](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_key_pair.emeka_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_security_group.allow_jenkins](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_ami.ubuntu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_ami"></a> [aws\_ami](#input\_aws\_ami) | n/a | `string` | `"ami-09d4a659cdd8677be"` | no |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | n/a | `string` | `"subnet-5d1bc607"` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | n/a | `string` | `"vpc-fbddfb9d"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ip_address"></a> [ip\_address](#output\_ip\_address) | n/a |
| <a name="output_web_address"></a> [web\_address](#output\_web\_address) | n/a |
