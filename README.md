# 🐳 SimpleTimeService on AWS ECS (Fargate)

This project uses **Terraform** to deploy a Dockerized Flask app on **AWS ECS (Fargate)** behind a **Load Balancer**.

## 🔧 What’s Inside

- VPC with public & private subnets
- ECS Cluster (Fargate)
- ECS Task Definition (using image from DockerHub)
- Application Load Balancer
- IAM roles and Security Groups

## 📦 Docker Image

Docker Hub: [`omkarpathak05/simpletimeservice`](https://hub.docker.com/r/omkarpathak05/simpletimeservice)

## 🚀 How to Deploy

```bash
terraform init
terraform apply
