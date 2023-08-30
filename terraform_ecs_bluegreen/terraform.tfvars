vpc_cidr                         = "10.6.0.0/16"
private_subnet                   = { count = 2, newbits = 10, netnum = 0 }
public_subnet                    = { count = 2, newbits = 10, netnum = 4 }
vpc_name                         = "ecs_vpc"
ecs_cluster_name                 = "fargate-cluster"
docker_container_port            = 8000
ecs_service_name                 = "simplehttp"
docker_image_url                 = "844268948863.dkr.ecr.us-east-2.amazonaws.com/simplehttp:latest"
memory                           = 512
desired_task_number              = 2
message                          = "Hi from Emmanuel Ogah"
cpu                              = 256
repo_name                        = "simplehttp"
env_name                         = "dev"
termination_wait_time_in_minutes = 30
deployment_config_name           = "CodeDeployDefault.ECSLinear10PercentEvery1Minutes"
