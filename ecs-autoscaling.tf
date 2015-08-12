resource "aws_autoscaling_group" "ecs-cluster" {
  availability_zones = ["${split(",", var.availability_zones)}"]
  vpc_zone_identifier = ["${split(",", var.subnet_ids)}"]
  name = "ECS ${var.cluster_name}"
  min_size = "${var.min_size}"
  max_size = "${var.max_size}"
  desired_capacity = "${var.desired_capacity}"
  health_check_type = "EC2"
  launch_configuration = "${aws_launch_configuration.ecs.name}"
  health_check_grace_period = "${var.health_check_grace_period}"

  tag {
    key = "Env"
    value = "${var.environment_name}"
    propagate_at_launch = true
  }

  tag {
    key = "Name"
    value =  "ECS ${var.cluster_name}"
    propagate_at_launch = true
  }
}
