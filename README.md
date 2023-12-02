# AWS Terraform Infrastructure Repository

This repository contains the Terraform configuration files for managing our AWS infrastructure, including a network module and an Aurora database module.

## Modules Explained

- **Network Module**: This module is responsible for setting up the network infrastructure on AWS. It creates a VPC, public and private subnets based on the provided CIDR blocks.

- **Aurora Module**: This module is responsible for setting up an Aurora database in the private subnets of the VPC. You can specify the cluster name, engine type, engine version, database name, and username.

## .gitignore Explained

The `.gitignore` file in this repository is configured to ignore certain files that are not meant to be part of the version control. Here's a brief explanation of what each entry does:

- `**/.terraform/*`: This ignores all local `.terraform` directories which are created when you initialize Terraform in your project.
- `*.tfstate` and `*.tfstate.*`: These ignore all Terraform state files, which are used to map real world resources to your configuration.
- `crash.log`: This ignores any crash log files.
- `*.tfvars` and `*.tfvars.json`: These ignore all variable files, which might contain sensitive data like passwords, private keys, etc.
- `override.tf`, `override.tf.json`, `*_override.tf`, `*_override.tf.json`: These ignore all override files, which are usually used to override resources locally.
- `.terraformrc` and `terraform.rc`: These ignore CLI configuration files.

## Getting Started

To get started with this project, you'll need to [install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) on your local machine.

Once you've done that, you can initialize Terraform in this project by running `terraform init`.

## Contributing

We welcome contributions! Please see our [Contributing Guide](CONTRIBUTING.md) for more details.