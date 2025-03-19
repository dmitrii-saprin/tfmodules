# Terraform AWS Subnets Module

Terraform module for creating multiple AWS subnets within a VPC, distributed across specified availability zones.

## Module features:

- Dynamically creates multiple subnets based on the provided CIDR blocks and Availability Zones.
- Configurable assignment of public IP addresses.
- Easily customizable tagging for resources.

## Usage

Example usage of this module:

```hcl
module "aws_subnets" {
  source                  = "path/to/module"
  vpc_id                  = "vpc-0123456789abcdef0"
  subnet_cidrs            = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones      = ["us-west-2a", "us-west-2b"]
  subnet_name             = "my-app-subnet"
  map_public_ip_on_launch = true
  tags = {
    Environment = "production"
    Project     = "MyApp"
  }
}
```

## Inputs

| Name                     | Description                                          | Type           | Default |
|--------------------------|------------------------------------------------------|----------------|---------|
| vpc_id                   | The ID of the VPC.                                   | string         | -       |
| subnet_cidrs             | List of CIDR blocks for subnets.                     | list(string)   | -       |
| availability_zones       | List of Availability Zones for subnets.              | list(string)   | -       |
| subnet_name              | Name prefix for subnet resources.                    | string         | -       |
| map_public_ip_on_launch  | Assign public IP addresses to instances in subnets.  | bool           | false   |
| tags                     | Additional tags for AWS resources.                   | map(string)    | -       |

## Outputs

| Name         | Description                  |
|--------------|------------------------------|
| subnet_ids   | IDs of the created subnets.  |

## Developer

- **Dmitrii Saprin**

## License

This module is licensed under the MIT License.