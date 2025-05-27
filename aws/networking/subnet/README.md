# Terraform AWS Subnet Module

This Terraform module creates one or more AWS subnets within a specified VPC.

Resources created:

- Subnet(s) based on provided CIDR blocks and availability zones
- Optional public IP assignment for each subnet
- Named tags per availability zone

## Author

Maintained by **Dmitrii Saprin**.

## Usage

```hcl
module "subnet" {
  source = "git::ssh://git@github.com/dmitrii-saprin/tfmodules.git//aws/networking/subnet?ref=subnet-1.0.0"

  vpc_id                  = module.vpc.vpc_id
  availability_zones      = ["us-east-1a", "us-east-1b"]
  subnet_cidrs            = ["10.0.1.0/24", "10.0.2.0/24"]
  subnet_name             = "public-subnet"
  map_public_ip_on_launch = true
  tags = {
    Environment = "dev"
  }
}

## Inputs

| Name                      | Description                                                           | Type     | Default | Required |
|---------------------------|------------------------------------------------------------------------|----------|---------|:--------:|
| `vpc_id`                  | The ID of the VPC where subnets will be created                       | `string` | n/a     |    ✅    |
| `availability_zones`      | List of availability zones for subnet placement                       | `list`   | n/a     |    ✅    |
| `subnet_cidrs`            | List of CIDR blocks to assign to the subnets                          | `list`   | n/a     |    ✅    |
| `subnet_name`             | Name prefix for subnets (used in tags)                                | `string` | n/a     |    ✅    |
| `map_public_ip_on_launch` | Whether to assign public IPs to launched instances (default: false)   | `string` | `false` |    ❌    |
| `tags`                    | Map of tags to assign to all subnets                                  | `map`    | `{}`    |    ✅    |
| `subnet_count`            | Optional count value for outputs only (not used to control resources) | `string` | `""`    |    ❌    |


## Outputs

| Name           | Description                     |
|----------------|---------------------------------|
| `subnet_ids`   | List of IDs of created subnets  |
| `subnet_count` | Optional count value from input |
