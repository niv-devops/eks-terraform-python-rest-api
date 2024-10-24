module "vpc" {
  source      = "./modules/vpc"
  cidr_block  = "10.0.0.0/16"
  tags        = { Name = "eks-vpc" }
}

module "subnets" {
  source               = "./modules/subnets"
  vpc_id               = module.vpc.vpc_id
  public_cidr_block    = "10.0.1.0/24"
  private_cidr_block   = "10.0.2.0/24"
  availability_zone    = "eu-central-1"
}

module "internet_gateway" {
  source   = "./modules/internet_gateway"
  vpc_id   = module.vpc.vpc_id
}

module "routing_tables" {
  source              = "./modules/routing_tables"
  vpc_id              = module.vpc.vpc_id
  subnet_id           = module.subnets.public_subnet_id
  internet_gateway_id = module.internet_gateway.gateway_id
}

module "nat_gateway" {
  source           = "./modules/nat_gateway"
  public_subnet_id = module.subnets.public_subnet_id
  eip_id           = aws_eip.this.id
}

module "eks_cluster" {
  source         = "./modules/eks_cluster"
  cluster_name   = "my-eks-cluster"
  role_arn       = aws_iam_role.eks_role.arn
  subnet_ids     = [module.subnets.public_subnet_id, module.subnets.private_subnet_id]
  node_group_name = "my-node-group"
  node_role_arn  = aws_iam_role.node_role.arn
  desired_size   = 2
  max_size       = 3
  min_size       = 1
}

module "load_balancer" {
  source          = "./modules/load_balancer"
  lb_name         = "my-app-lb"
  security_groups = [aws_security_group.lb_sg.id]
  subnet_ids      = [module.subnets.public_subnet_id]
}
