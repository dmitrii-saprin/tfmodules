# Terraform AWS VPC Module

This Terraform module creates a basic AWS Virtual Private Cloud (VPC) infrastructure with the following resources:

- VPC
- Default Security Group (with allow-all internal traffic)
- Default Route Table
- Internet Gateway

## Author

Maintained by **Dmitrii Saprin**.

## Usage

```hcl
module "vpc" {
  source   = "github.com/<your-github-username>/terraform-aws-vpc"
  name     = "my-vpc"
  vpc_cidr = "10.0.0.0/16"
  tags = {
    Environment = "dev"
  }
}

## Inputs

| Name       | Description                        | Type       | Default | Required |
|------------|------------------------------------|------------|---------|:--------:|
| `name`     | Name of the VPC                    | `string`   | `null`  |    ✅    |
| `vpc_cidr` | CIDR block for the VPC             | `string`   | `null`  |    ✅    |
| `tags`     | Map of tags to assign to resources | `map(any)` | `{}`    |    ✅    |


## Outputs

| Name             | Description                    |
|------------------|--------------------------------|
| `vpc_id`         | The ID of the created VPC      |
| `vpc_cidr`       | The CIDR block of the VPC      |
| `internet_gw_id` | The ID of the Internet Gateway |


