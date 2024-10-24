# VPC Module

This module creates a Virtual Private Cloud (VPC) for isolating AWS resources.

## Overview

- **Resource Type**: AWS VPC
- **Purpose**: To create a secure and isolated environment for deploying services.

## Inputs

| Name              | Description                     | Type     | Default |
|-------------------|---------------------------------|----------|---------|
| `vpc_cidr`        | CIDR block for the VPC         | `string` | `10.0.0.0/16` |
| `tags`            | Tags to assign to the VPC      | `map`    | `{}`    |

## Outputs

| Name           | Description                                |
|----------------|--------------------------------------------|
| `vpc_id`       | The ID of the created VPC                  |
| `vpc_cidr`     | The CIDR block of the VPC                  |

## Usage

Include this module in your Terraform configuration:

```hcl
module "vpc" {
  source   = "./vpc"
  vpc_cidr = "10.0.0.0/16"
  tags     = { Name = "MyVPC" }
}
```

## Additional Information

Refer to the Terraform AWS provider documentation for more details on available parameters and configurations.
