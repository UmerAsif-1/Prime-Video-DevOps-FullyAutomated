variable "aws_region" {
  description = "AWS region"
  type = string
  
}

variable "ec2_sg_name" {
    description = "Name of the security group"
    type = string
}

variable "ami_id" {
    description = "AMI ID"
    type = string
}
variable "instance_type" {
    description = "Instance type"
    type = string
}
variable "key_name" {    
    description = "Key name"
    type = string
}
variable "volume_size" {
    description = "Volume size"
    type = number
}
variable "instance_name" {
    description = "Instance name"
    type = string
}
variable "private_key_path" {
    description = "Private key path"
    type = string
} 