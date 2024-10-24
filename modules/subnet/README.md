# Subnet Module

This module creates subnets within the specified VPC.

## Overview

- **Resource Type**: AWS Subnets
- **Purpose**: To define network segments for different availability zones.

## Inputs

| Name              | Description                     | Type     | Default |
|-------------------|---------------------------------|----------|---------|
| `vpc_id`          | The ID of the VPC              | `string` | `""`    |
| `subnet_cidrs`    | List of CIDR blocks for subnets | `list`   | `[]`    |
| `availability_zones` | List of availability zones    | `list`   | `[]`    |
| `tags`            | Tags to assign to the subnets   | `map`    | `{}`    |

## Outputs

| Name           | Description                                |
|----------------|--------------------------------------------|
| `subnet_ids`   | List of IDs of the created subnets         |

## Usage

Include this module in your Terraform configuration:

```hcl
module "subnet" {
  source              = "./subnet"
  vpc_id             = module.vpc.vpc_id
  subnet_cidrs       = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones  = ["us-west-2a", "us-west-2b"]
  tags                = { Name = "MySubnets" }
}
```

## Additional Information

Refer to the Terraform AWS provider documentation for more details on available parameters and configurations.
