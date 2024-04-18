# AWS Infrastructure Module

This repository contains a Terraform module for setting up an AWS infrastructure according to the provided architectural diagram. The module is designed to create a highly available network structure with segregated public and private subnets across multiple Availability Zones, an Internet Gateway, NAT Gateways, and corresponding route tables and network ACLs.

## Structure

The module is divided into several files for clarity and ease of management, each representing a component of the AWS infrastructure:

- `main.tf` - The primary entry point of the module that may call other files.
- `variables.tf` - Definition of variables used throughout the module.
- `outputs.tf` - Output attributes that can be used to display or pass to other modules.
- `vpc.tf` - Configuration of the AWS Virtual Private Cloud (VPC).
- `subnets.tf` - Definitions for public and private subnets in each Availability Zone.
- `nat-gateways.tf` - NAT Gateways setup to allow private subnet instances to access the Internet.
- `route-tables.tf` - Route tables for directing traffic within the VPC.
- `igw.tf` - Internet Gateway setup for the VPC.
- `network-acls.tf` - Network Access Control Lists for fine-grained control over network traffic.
- `security-groups.tf` - Security group configurations.

## Usage

To use this module in your Terraform environment, add a `module` block to your Terraform configuration file as shown below:

```
module "aws_infrastructure" {
  source = "path/to/this/module/directory"

}
```
