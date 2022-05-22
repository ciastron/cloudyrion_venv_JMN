# Automated Deployment of our vulnerable Infrastructure.

This is supposed to be our Terraform code to deploy our vulnerable Infrastructure (AWS) in addition with the Web Application Juice-Shop.
Keep in mind, this is still WIP.

### Pre-requisites

* Terraform installed
* AWS cli installed on a host to connect to the cluster
* Helm installed
* AWS credentials configured
* kubectl installed on a host to deploy to the cluster

### Deployment Instructions

* Install Terraform
* Clone this repository
* Run a ```terraform init``` to grab providers and modules
* Run ```aws_configure``` and establish your credentials
* Run ```terraform plan``` to check for any errors.
* Run a ```terraform_apply``` and wait 10 - 15 minutes.
* Run ```aws eks --region eu-central-1 update-kubeconfig --name Project_BKS``` to add the cluster context to your kubeconfig
* Run ```helm install my-juice-shop securecodebox/juice-shop``` for deployment and services.
