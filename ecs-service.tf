resource "aws_ecs_service" "simpletimeservice" {
  name            = "simpletimeservice"
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.simpletimeservice.arn
  launch_type     = "FARGATE"
  desired_count   = 1

  network_configuration {
    subnets         = module.vpc.private_subnets
    security_groups = [aws_security_group.ecs_sg.id]
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = aws_lb_target_group.app_tg.arn
    container_name   = "simpletimeservice"
    container_port   = 5000
  }

  depends_on = [
    aws_lb_listener.alb_listener
  ]
}
