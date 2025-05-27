# Terraform AWS NAT Gateway Module

This Terraform module creates one or more AWS NAT Gateways along with corresponding Elastic IPs (via a nested `eip` module). It supports tagging and dynamic subnet/EIP assignment.

## Author

Maintained by **Dmitrii Saprin**

## Usage

```hcl
module "nat_gw" {
  source = "git::ssh://git@github.com/dmitrii-saprin/tfmodules.git//aws/networking/nat_gateway?ref=nat-1.0.0"

  name       = "nat-gateway"
  counts     = 2
  subnet_ids = ["subnet-abc123", "subnet-def456"]
  tags = {
    Environment = "prod"
  }
}

## Inputs

| Name          | Description                                                     | Type     | Default | Required |
|---------------|------------------------------------------------------------------|----------|---------|:--------:|
| `name`        | Name to apply to NAT Gateways and EIPs via tags                 | `string` | `""`    |    ✅    |
| `counts`      | Number of NAT Gateways to create                                | `string` | `""`    |    ✅    |
| `subnet_ids`  | List of subnet IDs where NAT Gateways will be placed            | `list`   | `[]`    |    ✅    |
| `tags`        | Common map of tags to apply to all resources                    | `map`    | `{}`    |    ❌    |
| `instance_id` | Unused placeholder variable (reserved for future functionality) | `string` | `""`    |    ❌    |


## Outputs

| Name              | Description                     |
|-------------------|---------------------------------|
| `nat_gateway_ids` | List of created NAT Gateway IDs |
