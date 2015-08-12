# AWS ECS Autoscaling Group Terraform module

A terraform module that creates an EC2 Launch Configuration and Autoscaling Group
and configures EC2 instances for an ECS cluster with private Docker registry credentials.

### Using

Create an ECS cluster first and use the name as the cluster for the `cluster_name` variable value.

The default AMI is the [Amazon ECS-Optimized Amazon Linux AMI](https://aws.amazon.com/marketplace/pp/B00U6QTYI2) for `us-east-1`.

Look in the `variables.tf` file for configuration options. Here's a sample config
with sensitive details changed to protect the innocent.

    source = "git@github.com:RobotsAndPencils/terraform-ecs-autoscaling.git"
    cluster_name = "terraform_testing"
    key_name = "staging"
    instance_type = "t2.micro"
    region = "us-east-1"
    availability_zones = "us-east-1a,us-east-1c,us-east-1d"
    subnet_ids = "subnet-c5493a9e,subnet-eaf89dd2,subnet-52316827"
    security_group_ids="sg-7be8020d,sg-65e80204"
    min_size = "3"
    max_size = "10"
    desired_capacity ="4"
    iam_instance_profile = "AmazonECSContainerInstanceRole"
    registry_url = "https://index.docker.io/v1/"
    registry_email = "your_email@"
    registry_auth = "your_registry_auth_token"
    environment_name = "staging"


### Contact

[![Robots & Pencils Logo](http://f.cl.ly/items/2W3n1r2R0j2p2b3n3j3c/rnplogo.png)](http://www.robotsandpencils.com)

Made with :heart: by Robots & Pencils ([@robotsNpencils](https://twitter.com/robotsNpencils))

#### Maintainers

- [Mike Brevoort](http://github.com/mbrevoort) ([@mbrevoort](https://twitter.com/mbrevoort))
