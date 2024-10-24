# NAT Gateway Module

This module creates a NAT Gateway for allowing outbound internet traffic from private subnets.

## Overview

- **Resource Type**: AWS NAT Gateway
- **Purpose**: To provide internet access for resources in private subnets.

## Inputs

| Name              | Description                     | Type     | Default |
|-------------------|---------------------------------|----------|---------|
| `vpc_id`          | The ID of the VPC              | `string` | `""`    |
| `elastic_ip`      | Elastic IP for the NAT Gateway  | `string` | `""`    |
| `tags`            | Tags to assign to the NAT Gateway | `map`    | `{}`    |

## Outputs

| Name           | Description                                |
|----------------|--------------------------------------------|
| `nat_gateway_id` | The ID of the created NAT Gateway        |

## Usage

Include this module in your Terraform configuration:

```hcl
module "nat_gateway" {
  source      = "./nat_gateway"
  vpc_id      = module.vpc.vpc_id
  elastic_ip  = "your_elastic_ip"
}
```

## Additional Information

Refer to the Terraform AWS provider documentation for more details on available parameters and configurations.
