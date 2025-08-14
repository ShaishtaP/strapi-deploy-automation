🚀 Project Overview

This project automates the deployment of a containerized Strapi application to AWS using modern DevOps practices. It leverages Docker for containerization, Terraform for Infrastructure as Code (IaC), and GitHub Actions for CI/CD automation, ensuring faster and more reliable deployments.

The infrastructure is designed for high availability, scalability, and zero-downtime updates using AWS ECS Fargate and Blue/Green deployment strategies.

✨ Key Features

Automated deployment of a containerized Strapi application to AWS EC2 & ECS Fargate using Docker and Terraform

CI/CD pipeline with GitHub Actions for automated builds, testing, and zero-downtime Blue/Green deployments

Comprehensive monitoring and logging via AWS CloudWatch for real-time application health and performance tracking

Scalable and fault-tolerant architecture leveraging AWS ECS, ECR, ALB, and CodeDeploy

Infrastructure as Code (IaC) with Terraform for repeatable and version-controlled environment provisioning

Secure deployment workflows with secrets management in GitHub Actions

🛠️ Tech Stack

Programming & Scripting: Python, JavaScript (for app integration scripts)

Containerization: Docker

Infrastructure as Code: Terraform

CI/CD: GitHub Actions

Cloud Provider: AWS (EC2, ECS, ECR, ALB, CodeDeploy, CloudWatch, VPC, RDS)

Monitoring & Logging: AWS CloudWatch

📦 Deployment Workflow

Code Push → Developer commits changes to GitHub

CI/CD Trigger → GitHub Actions builds and tests the Docker image

Image Push → Image is pushed to AWS ECR

Infrastructure Provisioning → Terraform updates ECS Fargate service, ALB, and related resources

Blue/Green Deployment → AWS CodeDeploy switches traffic to the new task revision with zero downtime

Monitoring → CloudWatch tracks metrics, logs, and alerts for performance and error monitoring

📈 Benefits

Faster and more reliable deployments

Zero downtime during application updates

Fully automated and repeatable infrastructure setup

Centralized monitoring and logging for easier troubleshooting

Scalable cloud-native architecture ready for production workloads


<img width="1979" height="1180" alt="image" src="https://github.com/user-attachments/assets/ab506fc1-bd24-425e-8324-46e8e7e4dd97" />

