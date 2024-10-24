## "Hello World" Simple REST API

This repo contains a simple REST API written in python using flask, which can also be deployed to docker containers.
https://github.com/alankrantas/hello-world-rest-apis/tree/main/python_api

## "Hello World" REST API Deployment with Terraform on EKS

This project deploys a simple "Hello World" REST API using Python on an Amazon EKS (Elastic Kubernetes Service) cluster through Terraform.

## Structure

The cluster alongside its AWS components are organized into several Terraform modules to build the whole infrastructure:

- **VPC Module**: Creates a Virtual Private Cloud (VPC) for isolating resources.
- **Subnet Module**: Configures subnets for the VPC.
- **Routing Table Module**: Sets up routing tables for directing traffic.
- **Internet Gateway Module**: Provides internet access to the VPC.
- **NAT Gateway Module**: Enables instances in a private subnet to initiate outbound traffic to the internet.
- **Load Balancer Module**: Configures an application load balancer to distribute traffic to the API.
- **EKS Cluster Module**: Deploys an EKS cluster for running containerized applications.

## Prerequisites

- Terraform installed on your local machine
- AWS CLI configured with appropriate permissions
- kubectl installed for managing the EKS cluster

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/alankrantas/hello-world-rest-apis.git
   cd hello-world-rest-apis/python_api
   ```

2. Navigate to each module directory and run:
   ```bash
   terraform init
   terraform apply
   ```

3. Follow the instructions in the individual module READMEs for specific configurations and outputs.

## Usage

Once the deployment is complete, you can access the REST API through the Load Balancer URL provided in the output.

## Cleanup

To destroy the resources created, run `terraform destroy` in each module directory.
