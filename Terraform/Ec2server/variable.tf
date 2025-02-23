variable "aws_region" {
  description = "AWS region"
  type = string
  
}

variable "vpc_id" {
    description = "VPC ID"
    type = string
}
variable "ec2_sg_name" {
    description = "Name of the security group"
    type = string
}
