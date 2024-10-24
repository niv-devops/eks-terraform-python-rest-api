# EKS Cluster Module

This module creates an Amazon EKS (Elastic Kubernetes Service) cluster.

## Overview

- **Resource Type**: AWS EKS Cluster
- **Purpose**: To manage and orchestrate containerized applications using Kubernetes.

## Inputs

| Name              | Description                     | Type     | Default |
|-------------------|---------------------------------|----------|---------|
| `vpc_id`          | The ID of the VPC              | `string` | `""`    |
| `subnet_ids`      | List of subnet IDs for EKS      | `list`   | `[]`    |
| `cluster_name`    | Name of the EKS cluster         | `string` | `"my-eks-cluster"` |
| `tags`            | Tags to assign to the EKS cluster | `map`    | `{}`    |

## Outputs

| Name           | Description                                |
|----------------|--------------------------------------------|
| `cluster_id`   | The ID of the created EKS cluster          |
| `cluster_endpoint` | The endpoint of the EKS cluster          |
| `cluster_name` | The name of the EKS cluster                 |

## Usage

Include this module in your Terraform configuration:

```hcl
module "eks_cluster" {
  source         = "./eks_cluster"
  vpc_id        = module.vpc.vpc_id
  subnet_ids    = module.subnet.subnet_ids
  cluster_name  = "MyEKSCluster"
  tags          = { Name = "MyEKS" }
}
```

## Additional Information

Refer to the Terraform AWS provider documentation for more details on available parameters and configurations.
