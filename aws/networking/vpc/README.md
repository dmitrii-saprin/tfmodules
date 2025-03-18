# Terraform AWS VPC Module

## Overview
This Terraform module creates an AWS Virtual Private Cloud (VPC) with essential networking components, including:

- A VPC with configurable CIDR block
- A default security group
- A default route table
- An internet gateway

## Author
Developed by **Dmitrii Saprin**

## Features
- Creates a VPC with a specified CIDR block
- Adds an internet gateway to enable public access
- Configures a default security group
- Configures a default route table
- Allows tagging for better resource management

## Requirements
- Terraform >= 0.12
- AWS Provider

## Usage
```hcl
module "vpc" {
  source    = "./path_to_module"
  name      = "my-vpc"
  vpc_cidr  = "10.0.0.0/16"
  tags = {
    Environment = "dev"
    Project     = "example"
  }
}
```

## Inputs
| Name      | Description                  | Type   | Default | Required |
|-----------|------------------------------|--------|---------|----------|
| `name`    | Name of the VPC               | string | `null`  | yes      |
| `vpc_cidr` | CIDR block for the VPC        | string | `null`  | yes      |
| `tags`    | Tags to apply to the resources | map(any) | `{}`  | no       |

## Outputs
| Name            | Description              |
|----------------|--------------------------|
| `vpc_id`       | The ID of the created VPC |
| `vpc_cidr`     | The CIDR block of the VPC |
| `internet_gw_id` | The ID of the internet gateway |

## License
MIT License

