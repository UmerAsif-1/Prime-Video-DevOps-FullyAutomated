locals {
    region = "us-east-1"
    name = "amazon-prime-cluster"
    vpc_cidr = "10.0.0.0/16"
    azs = ["us-east-1a", "us-east-1b"]
    public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
    private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
    intra_subnet_cidrs = ["10.0.5.0/24", "10.0.6.0/24"]
    tags = {
        Name = "amazon-prime-cluster"
    }
}
provider "aws" {
    region = local.region
}