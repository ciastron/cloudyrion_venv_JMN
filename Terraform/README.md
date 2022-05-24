# Deploy an EKS cluster using Terraform
This section explains how to install and deploy the EKS cluster using Terraform.

## Prerequisites
- Install **AWS CLI** and configure the AWS account (i.e., use `aws configure` and specify your credentials).
- Install **Terraform**. On MacOS: `brew install hashicorp/tap/terraform`
- Install `kubectl` to test the EKS infrastructure. For example, you may use `kubectl` to verify the number of pods running on your cluster. On MacOS: `brew install kubectl`.

## Set up
This section explains how to install and deploy the EKS cluster using Terraform.

After installing the previous programs, you can initialize your EKS environment running the following command
1. `terraform init`. This command allows you to initialize the terraform environment. You need to run this command only once.
2. [OPT.] `terraform plan`. This command allows you to have an idea about which resources will be created abd initialized by Terraform. This command is also used as a sanity check to see if your `tf` scripts have any errors.
3. `terraform apply`. This command allows you to create the resources specified in the `tf` scripts.
4. `aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)`. This command allows you to run `kubectl` to check your resources in the EKS cluster.
