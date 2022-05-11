# DAILY PROGRESS

Authors: Marco, Jonas, Nuri

## 09/05/2022

We progressed on the following items:
- We started studying the state of the art of AWS environment: which services can we use to host our vulnerable API and WebApp services, how to set up an AWS EC2 instance, and how to connect to it through SSH.
- We had a meeting with Micheal to discuss the main services we will use to simulate a vulnerable WebApp and vulnerable API services, i.e., **VAMPI** and **Juice-Shop**.
- We had a meeting with Reza to discuss the basic concept we need to know to start working on AWS and introduce Terraform. Introduction to Terragoat.
- We had a short meeting with Okay to discuss a first sketch of the network infrastructure.
- Creation of a first EC2 instance with the Juice-Shop vulnerable WebApp installed (ONLY FOR A DEMO PURPOSE).
- Creation of this repo.

Next tasks:
- A formal definition of a pipeline.
- Continuing studying the sota (State of the Art) of AWS infrastructure, Kubernetis and Terraform.
- Research and design a first sketch of the network diagram with EKS systems (AWS service to manage containers).

## 10/05/2022
GROUP
- Meeting with @lsokoli to discuss the network diagram and basic concepts on K8s and containers.

@ciastron

- Followed the CloudGuru course about "AWS Security Concepts". It introduces to some services used in AWS such as Cloudtrial, GuardDuty, Inspector.
- Followed the course about AWS EKS. EKS is an AWS service that manages containers using Kubernetes.
- Start thinking about how to design the network diagram with the EKS instances.
- Intro to kebernetes with lab, set up 3 servers: 1 control plane and 2 nodes/workers. Personal thoughts about this lab: not complex, a lot of configuration and dependencies/packages to install; it could be partially automated.

@RuffyJK

- Started to install AWS Cli (Command Line Interface) on Mac. 
- Started to configurate CLI (Configurate Access Key, Secret Access Key, Default Region, Default Format).
- Tried to deploy EC2 by using CLI. ---> Need more rights in IAM.
- Redeployed Web Application for testing purposes on Cloudguru Sandbox (instead of http using https).
- Started to watch the course about AWS EKS.

@nuri4444
- Watched the EKS Basics course on Cloud Guru
- Worked in the Lab of EKS Basics (AWS CLI, eksctl, kubectl)


Next tasks:
- Set AWS account with Cloudyrion credentials.
- Continue studyding the sota and doing labs on Kubernetes/EKS
- Discuss about network diagram

## 11/05/2022
GROUP
- Working together in order to understand how to create PODS and Services using EKS.

@ciastron
 - Continue studying the sota of K8s and EKS (Elastic K8s Service): command line tools such as `kubectl` and `eksctl`.
 - Deploy some services in K8s such as httpd and Nginx.

@RuffyJK
- Continued to follow the course about AWS EKS.
- Set up a new EC2 on Cloudguru Sandbox Lab.
- Installed all the necessary tools for K8 (kubectl and eksctl)
- Deployed a Cluster on AWS Sandbox with one master and 3 Nodes.
- Deployed a Load Balancer and Nginx Image, Httpd. --> worked
- Tried to deploy Juice Shop Web Application ---> Didnt work.

@nuri4444


The next steps are:
- Check permissions on AWS account in order to deploy EKS cluster. In particular, we need to check if we need permissions to create an IAM user that we will use later to deploy the cluster. Side note: 
- Deploy other dockers (e.g., Juice-Shop) on a Kubernetes Cluster. Dig down about: is it a *port* problem? For instance, Juice-Shop run on port 3000. Another approch we could follow is to install the docker locally and then, in the yml file specifying to get that resource locally.


## 12/05/2022
