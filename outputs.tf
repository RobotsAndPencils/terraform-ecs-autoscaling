output "autoscaling.id" {
  value = "${aws_autoscaling_group.ecs-cluster.id}"
}

output "autoscaling.availability_zones" {
  value = "${aws_autoscaling_group.ecs-cluster.availability_zones}"
}

output "autoscaling.min_size" {
  value = "${aws_autoscaling_group.ecs-cluster.min_size}"
}

output "autoscaling.max_size" {
  value = "${aws_autoscaling_group.ecs-cluster.max_size}"
}

output "autoscaling.default_cooldown" {
  value = "${aws_autoscaling_group.ecs-cluster.default_cooldown}"
}

output "autoscaling.name" {
  value = "${aws_autoscaling_group.ecs-cluster.name}"
}

output "autoscaling.health_check_grace_period" {
  value = "${aws_autoscaling_group.ecs-cluster.health_check_grace_period}"
}

output "autoscaling.health_check_type" {
  value = "${aws_autoscaling_group.ecs-cluster.health_check_type}"
}

output "autoscaling.desired_capacity" {
  value = "${aws_autoscaling_group.ecs-cluster.desired_capacity}"
}

output "autoscaling.launch_configuration" {
  value = "${aws_autoscaling_group.ecs-cluster.launch_configuration}"
}

output "autoscaling.vpc_zone_identifier" {
  value = "${aws_autoscaling_group.ecs-cluster.vpc_zone_identifier}"
}

output "autoscaling.load_balancers" {
  value = "${aws_autoscaling_group.ecs-cluster.load_balancers}"
}

output "launch_configuration.id" {
  value = "${aws_launch_configuration.ecs.id}"
}
