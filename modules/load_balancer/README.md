# Load Balancer Module

This module creates public and internal Application Load Balancers (ALB) to distribute incoming traffic to the REST API running on EKS.

## Features

- Creates a public Application Load Balancer for internet-facing applications.
- Creates an internal Application Load Balancer for private applications.
- Configurable security groups for access control.
- Outputs the DNS names of both load balancers.

### Inputs

| Name               | Description                                       | Type             | Default  |
|--------------------|---------------------------------------------------|------------------|----------|
| `security_group_id` | The security group ID to associate with the load balancers | `string`         | `null`   |
| `public_subnets`    | List of public subnet IDs for the load balancer  | `list(string)`   | `[]`     |
| `private_subnets`   | List of private subnet IDs for the internal load balancer | `list(string)`   | `[]`     |

### Outputs

| Name                    | Description                                     |
|-------------------------|-------------------------------------------------|
| `public_lb_dns_name`   | The DNS name of the public load balancer       |
| `internal_lb_dns_name` | The DNS name of the internal load balancer     |

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
