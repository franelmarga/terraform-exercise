# AWS Network Infrastructure Module

This module is designed to provision a fully functional AWS VPC network infrastructure with public and private subnets across multiple availability zones, an Internet Gateway, NAT Gateways, and associated routing and network ACLs.

## Usage

To use this module in your Terraform environment, you will need to include something like the following in your `main.tf` file within your environment's directory (e.g., `development`):

```hcl
module "infra-network" {
  source = "../../modules/infra-network" # or wherever the module is placed!

  env                = var.env
  region             = var.region
  vpc_cidr           = var.vpc_cidr
  availability_zones = var.availability_zones
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  create_nat_gateway = var.create_nat_gateway
  repo_tags          = var.repo_tags
  env_tags           = var.env_tags
}
```

## Repo structure

The Terraform code is divided into environments, and each AWS resource is split into separate Terraform files to maintain granularity.

````
TERRAFORM-EXERCISE
├── README.md
├── environments
│   ├── development
│   │   ├── main.tf
│   │   ├── terraform.tfstate
│   │   ├── terraform.tfvars
│   │   └── variables.tf -> ../../modules/infra-network/variables.tf
│   └── production
│       ├── main.tf
│       ├── terraform.tfvars
│       └── variables.tf -> ../../modules/infra-network/variables.tf
└── modules
    └── infra-network
        ├── acls.tf
        ├── common.tf
        ├── igw.tf
        ├── nat-gateways.tf
        ├── output.tf
        ├── route-tables.tf
        ├── subnets.tf
        ├── variables.tf
        └── vpc.tf
````
