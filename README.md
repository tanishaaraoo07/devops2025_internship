
DevOps 2025 Internship Final Project

```markdown
# 🔧 SecureCloudOps — Complete CI/CD Pipeline with DevSecOps Integration

This project delivers an end-to-end **Cloud DevOps and DevSecOps pipeline** using Terraform, AWS, GitHub Actions, and Kubernetes tooling. It automates infrastructure provisioning, deployment, and security scanning through modern best practices and open-source tools.

---

## 🎯 Project Overview

✅ Provisioned secure and scalable infrastructure using **Terraform**  
✅ Configured a full **CI/CD pipeline** on AWS with CodePipeline, CodeBuild, and CodeDeploy  
✅ Integrated **DevSecOps** scanning into GitHub Actions using `tfsec`, `trivy`, and YAML validation  
✅ Used **Sealed Secrets** to securely store and manage Kubernetes secrets  
✅ Designed for **cost efficiency**, using only free-tier AWS services and GitHub-native automation

---

## 🛠️ Technologies & Tools

| Category         | Tool/Service                          |
|------------------|----------------------------------------|
| Infrastructure   | Terraform, AWS EC2, IAM, S3            |
| CI/CD            | AWS CodePipeline, GitHub Actions       |
| Build & Deploy   | AWS CodeBuild, AWS CodeDeploy          |
| Security Scans   | `tfsec`, `trivy`                       |
| Secret Management| Kubernetes Sealed Secrets, `kubeseal` |
| Validation       | `yq` for YAML linting                  |
| Repo             | [GitHub](https://github.com/tanishaaraoo07/devops2025_internship)

---

## ⚙️ Key Components

### 📦 Infrastructure as Code (IaC)

- Created AWS resources using **Terraform modules**:
  - `aws_codepipeline`, `aws_codebuild_project`, `aws_codedeploy_deployment_group`, `aws_iam_role`, `aws_s3_bucket`
- Configured Terraform backend to manage state
- Included `outputs.tf`, `variables.tf`, and reusable `main.tf`

### 🔁 CI/CD Pipeline

- **Source**: GitHub repo as input to CodePipeline
- **Build**: AWS CodeBuild compiles/deploys artifact
- **Deploy**: CodeDeploy delivers app to EC2
- Pipeline is triggered automatically on every commit

### 🧪 DevSecOps via GitHub Actions

- GitHub Actions triggers on every push to `main`
- Runs:
  - `tfsec` → static analysis on Terraform code
  - `trivy` → Dockerfile vulnerability scan (optional)
  - `yq` → YAML syntax validation for Kubernetes files
- Pipeline does **not fail** on warnings (soft fail enabled)

### 🔐 Kubernetes Sealed Secrets

- Created mock SealedSecret YAML to simulate encrypted secret storage
- Sealed secret is safe to commit and can be decrypted only by a Sealed Secrets controller in a Kubernetes cluster
- `kubeseal` CLI was used locally for demo

---

## 📁 Project Structure

```

devops2025\_internship/
├── terraform/                  # Infrastructure as Code (Terraform files)
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── k8s/                        # Kubernetes manifests
│   ├── sealed-secret.yaml
│   └── deployment.yaml
├── .github/workflows/          # GitHub Actions workflow
│   └── devsecops.yml
└── README.md                   # This file

````

---

## 📜 Sample Commands Used

### Terraform:
```bash
terraform init
terraform plan
terraform apply
````

### Security Tools:

```bash
tfsec terraform/
trivy config .
kubeseal --version
```

### Git:

```bash
git add .
git commit -m "Set up full CI/CD with security"
git push origin main
```

---

## 🔄 CI/CD Pipeline Flow (Visual Summary)

1. You `git push` code to GitHub
2. **GitHub Actions** runs security scans (`tfsec`, `trivy`), lints YAML files
3. In parallel, **AWS CodePipeline** picks up changes:

   * Pulls from GitHub
   * Builds with CodeBuild
   * Deploys to EC2 with CodeDeploy
4. Deployment happens automatically — all infrastructure defined in Terraform

---

## ✅ Final Outcome

* Fully automated CI/CD with security built-in
* Infrastructure is version-controlled, reusable, and modular
* Security scanning happens **on every push**
* All secrets are managed securely using Sealed Secrets
* Uses only **free-tier AWS resources** and open-source tools
