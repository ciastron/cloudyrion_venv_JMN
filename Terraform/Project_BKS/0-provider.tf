provider "aws" {
    region = "eu-central-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "helm" {
  kubernetes {
    host = data.aws_eks_cluster.Project_BKY.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.Project_BKY.certificate_authority.0.data)
    token = data.aws_eks_cluster_auth.Project_BKY.token
    load_config_file = false
  }
}
