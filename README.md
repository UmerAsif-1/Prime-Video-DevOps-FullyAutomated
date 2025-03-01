# Prime Video DevOps Fully Automated

## Project Overview
This project demonstrates a **fully automated CI/CD pipeline** for deploying an **Amazon Prime clone** using modern DevOps tools and best practices.

### Key Features:
- **Infrastructure as Code (IaC)** with Terraform
- **Continuous Integration & Deployment (CI/CD)** using Jenkins
- **Security & Quality Checks** with SonarQube and Trivy
- **Containerization & Orchestration** using Docker and Kubernetes (EKS)
- **Automated Deployments** with ArgoCD
- **Monitoring & Alerting** with Prometheus & Grafana

## Tech Stack
| Category          | Tools Used |
|------------------|------------|
| **Version Control** | GitHub |
| **Infrastructure** | Terraform, AWS EKS, EC2, IAM, Security Groups |
| **CI/CD** | Jenkins, GitHub Actions (planned) |
| **Code Analysis** | SonarQube |
| **Security** | Aqua Trivy |
| **Containerization** | Docker, AWS ECR |
| **Deployment** | Kubernetes, ArgoCD |
| **Monitoring** | Prometheus, Grafana |

## Project Structure
```
Prime-Video-DevOps-FullyAutomated/
├── terraform/                    # Infrastructure as Code (EKS, EC2, Networking)
├── pipeline/                      # CI/CD Pipeline Scripts
│   ├── build_pipeline             # Jenkins Build Pipeline
│   ├── cleanup_pipeline           # Cleanup Resources Pipeline
│   ├── deployment_eks             # Deployment to EKS Pipeline
│   ├── deployment_pipeline        # ArgoCD Deployment Pipeline
├── k8s-manifests/                 # Kubernetes YAML Files
├── src/                           # Source Code of Amazon Prime Clone
└── README.md                      # Project Documentation
```

## Prerequisites
Ensure you have the following tools installed before proceeding:
- **AWS CLI**: [Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- **Terraform**: [Installation Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- **Docker**: [Installation Guide](https://docs.docker.com/get-docker/)
- **Kubernetes CLI (kubectl)**: [Installation Guide](https://kubernetes.io/docs/tasks/tools/)
- **Jenkins** (or GitHub Actions planned for CI/CD automation)

## Infrastructure Setup (Terraform)
### 1️⃣ Clone the Repository
```bash
git clone https://github.com/UmerAsif-1/Prime-Video-DevOps-FullyAutomated.git
cd Prime-Video-DevOps-FullyAutomated
```
### 2️⃣ Configure AWS
```bash
aws configure   # Provide your AWS access & secret keys
```
### 3️⃣ Deploy Infrastructure
```bash
cd terraform/
terraform init
terraform apply --auto-approve
```
This sets up **EC2 instances, EKS clusters, IAM roles, and networking**.

## CI/CD Pipeline (Jenkins & GitHub Actions)
### 1️⃣ Jenkins Pipeline Stages:
1. **Git Checkout**: Pulls the latest code.
2. **SonarQube Analysis**: Performs static code analysis.
3. **Security Scan (Trivy)**: Checks vulnerabilities.
4. **Build & Push Docker Image**: Pushes to AWS ECR.
5. **Deploy to EKS**: Deploys using ArgoCD.
6. **Monitoring Setup**: Configures Prometheus & Grafana.
7. **Cleanup Pipeline**: Deletes unused resources.

## Deployment to Kubernetes (EKS)
Once the Docker image is built and pushed, deploy it to Kubernetes using:
```bash
kubectl apply -f k8s-manifests/
```
To verify the running services:
```bash
kubectl get pods
kubectl get svc
```

## Monitoring with Prometheus & Grafana
1. **Install Helm Charts**:
```bash
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack -n monitoring
```
2. **Expose Grafana Dashboard**:
```bash
kubectl patch svc grafana -n monitoring -p '{"spec": {"type": "LoadBalancer"}}'
```
Access Grafana at `http://<LoadBalancer-IP>:3000`

## Cleanup Resources
To delete the AWS infrastructure:
```bash
terraform destroy --auto-approve
```
To remove Kubernetes resources:
```bash
kubectl delete -f k8s-manifests/
```

## Future Enhancements
✅ **Integrate GitHub Actions for CI/CD**  
✅ **Automate rollback mechanism**  
✅ **Add centralized logging with ELK Stack**  

---

## 📧 Contact
For queries, reach out via [LinkedIn](https://www.linkedin.com/in/umer-asif/)
