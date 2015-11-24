variable "cluster_name" {
    description = "The name of the ECS Cluster"
}

variable "ami" {
  /* us-east-1, version 2015.03.d */
  default = "ami-e1c33f8a"
  description = "AMI id to launch, must be in the region specified by the region variable"
}

variable "key_name" {
    description = "SSH key name in your AWS account for AWS instances."
}

variable "region" {
    default = "us-east-1"
    description = "The region of AWS"
}

variable "availability_zones" {
    description = "Comma separated list of EC2 availability zones to launch instances, must be withing region"
}

variable "subnet_ids" {
    description = "Comma separated list of subnet ids, must match availability zones"
}

variable "security_group_ids" {
    description = "Comma separated list of security group ids"
    default = ""
}

variable "instance_type" {
    default = "m1.small"
    description = "Name of the AWS instance type"
}

variable "min_size" {
    default = "1"
    description = "Minimum number of instances to run in the group"
}

variable "max_size" {
    default = "5"
    description = "Maximum number of instances to run in the group"
}

variable "desired_capacity" {
    default = "1"
    description = "Desired number of instances to run in the group"
}

variable "health_check_grace_period" {
    default = "300"
    description = "Time after instance comes into service before checking health"
}
variable "iam_instance_profile" {
    description = "The IAM Instance Profile (e.g. right side of Name=AmazonECSContainerInstanceRole)"
}

variable "registry_url" {
    default = "https://index.docker.io/v1/"
    description = "Docker private registry URL, defaults to Docker index"
}

variable "registry_email" {
    default = ""
    description = "Docker private registry login email address"
}

variable "registry_auth" {
    default = ""
    description = "Docker private registry login auth token (from ~/.dockercgf)"
}

variable "environment_name" {
    default = ""
    description = "Environment name to tag EC2 resources with (tag=environment)"
}
