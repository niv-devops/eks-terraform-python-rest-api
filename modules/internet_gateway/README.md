# Internet Gateway Module

This module creates an Internet Gateway and attaches it to the VPC.

## Overview

- **Resource Type**: AWS Internet Gateway
- **Purpose**: To allow internet access to resources in the VPC.

## Inputs

| Name              | Description                     | Type     | Default |
|-------------------|---------------------------------|----------|---------|
| `vpc_id`          | The ID of the VPC              | `string` | `""`    |

## Outputs

| Name           | Description                                |
|----------------|--------------------------------------------|
| `internet_gateway_id` | The ID of the created Internet Gateway  |

## Usage

Include this module in your Terraform configuration:

```hcl
module "internet_gateway" {
  source   = "./internet_gateway"
  vpc_id   = module.vpc.vpc_id
}
```

## Additional Information

Refer to the Terraform AWS provider documentation for more details on available parameters and configurations.
