variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "eu-west-1"
}

# ubuntu-trusty-14.04 (x64)
variable "aws_amis" {
  default = {
    "eu-west-1" = "ami-03ef731cc103c9f09"
    "us-west-2" = "ami-7f675e4f"
  }
}

variable "availability_zones" {
  default     = ["eu-west-1a","eu-west-1b","eu-west-1c"]
  description = "List of availability zones, use AWS CLI to find your "
}

variable "subnets" {
  default     = ["subnet-021a5b64", "subnet-5faafb17", "subnet-8a59dad0"]
  description = "List of availability zones, use AWS CLI to find your "
}

variable "key_name" {
  description = "Name of AWS key pair"
  default = "aws2019-new"
}

variable "instance_type" {
  default     = "t3.micro"
  description = "AWS instance type"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default     = "1"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default     = "2"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default     = "1"
}
