# Routing Table Module

This module creates routing tables and associates them with subnets.

## Overview

- **Resource Type**: AWS Routing Tables
- **Purpose**: To control the routing of network traffic within the VPC.

## Inputs

| Name              | Description                      | Type     | Default |
|-------------------|----------------------------------|----------|---------|
| `vpc_id`          | The ID of the VPC               | `string` | `""`    |
| `public_subnet_ids` | List of public subnet IDs      | `list`   | `[]`    |
| `tags`            | Tags to assign to the routing table | `map`    | `{}`    |

## Outputs

| Name           | Description                                |
|----------------|--------------------------------------------|
| `route_table_id` | The ID of the created route table         |

## Usage

Include this module in your Terraform configuration:

```hcl
module "routing_table" {
  source             = "./routing_table"
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.subnet.subnet_ids
  tags              = { Name = "MyRouteTable" }
}
```

## Additional Information

Refer to the Terraform AWS provider documentation for more details on available parameters and configurations.
