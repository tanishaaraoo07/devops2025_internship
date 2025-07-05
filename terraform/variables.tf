variable "project_name" {
  default = "devops2025"
}

variable "github_repo" {
  default = "https://github.com/yourusername/your-repo"
}

variable "github_token" {
  description = "GitHub Personal Access Token"
  type        = string
  sensitive   = true
}

