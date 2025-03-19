# Terraform Modules

This repository contains a collection of Terraform modules designed to simplify and standardize cloud infrastructure management on the AWS platform.

**Developer**: [Dmitrii Saprin](https://www.linkedin.com/in/dmitrii-s1989/)

## Repository Contents

The repository includes several Terraform modules implementing standard infrastructure components such as:

- VPC and subnets
- Security groups
- EC2 instances
- Load Balancers
- Databases (e.g., RDS)
- IAM roles and policies

## Repository Structure

```
.
├── modules
│   ├── vpc
│   ├── subnets
│   ├── ec2-instance
│   └── ...
├── examples
│   ├── vpc-example
│   ├── ec2-instance-example
│   └── ...
├── README.md
└── LICENSE
```

- **modules**: Directory containing the main Terraform modules.
- **examples**: Examples of module usage.

## Using the Modules

Each module includes a README file describing its capabilities, variables, and usage examples. A typical example of module usage:

```hcl
module "my_vpc" {
  source = "github.com/dmitrii-saprin/tfmodules/modules/vpc"

  name       = "my-prod-vpc"
  vpc_cidr   = "10.0.0.0/16"
  tags       = {
    Environment = "production"
    Owner       = "devops-team"
  }
}
```

## Contribution

Please open issues or pull requests if you wish to suggest improvements, fix bugs, or add new features.

## License

This repository is distributed under the [MIT](LICENSE) license.

