resource "aws_launch_configuration" "ecs" {
    name = "ECS ${var.cluster_name}"
    image_id = "${var.ami}"
    instance_type = "${var.instance_type}"
    iam_instance_profile = "${var.iam_instance_profile}"
    key_name = "${var.key_name}"
    security_groups = ["${split(",", var.security_group_ids)}"]
    user_data = "#!/bin/bash\necho ECS_CLUSTER=${var.cluster_name} > /etc/ecs/ecs.config && echo ECS_ENGINE_AUTH_TYPE=dockercfg >> /etc/ecs/ecs.config && echo ECS_ENGINE_AUTH_DATA='{\"${var.registry_url}\":{\"auth\":\"${var.registry_auth}\",\"email\":\"${var.registry_email}\"}}' >> /etc/ecs/ecs.config"
}
