variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Provider's region"
}

variable "profile" {
  type        = string
  default     = "vscode"
  description = "IAM profile used for deploying"
}

