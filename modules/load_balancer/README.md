# Load Balancer Module

This module creates an Application Load Balancer (ALB) to distribute incoming traffic.

## Overview

- **Resource Type**: AWS Application Load Balancer
- **Purpose**: To distribute traffic to the REST API running on EKS.

## Inputs

| Name              | Description                     | Type     | Default |
|-------------------|---------------------------------|----------|---------|
| `vpc_id`          | The ID of the VPC              | `string` | `""`    |
| `subnet_ids`      | List of subnet IDs for ALB      | `list`   | `[]`    |
| `tags`            | Tags to assign to the Load Balancer | `map`    | `{}`    |

## Outputs

| Name           | Description                                |
|----------------|--------------------------------------------|
| `load_balancer_id` | The ID of the created Load Balancer     |

## Usage

Include this module in your Terraform configuration:

```hcl
module "load_balancer" {
  source      = "./load_balancer"
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = module.subnet.subnet_ids
  tags        = { Name = "MyLoadBalancer" }
}
```

## Additional Information

Refer to the Terraform AWS provider documentation for more details on available parameters and configurations.
