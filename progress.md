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
 - Introduciton to K8s objects: PODS, DEPLOYMENT and SERVICE.
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
- Finished the EKS Course on Cloud Guru
- Started the Kubernetes Essentials Course


The next steps are:
- Check permissions on AWS account in order to deploy EKS cluster. In particular, we need to check if we need permissions to create an IAM user that we will use later to deploy the cluster. Side note: 
- Deploy other dockers (e.g., Juice-Shop) on a Kubernetes Cluster. Dig down about: is it a *port* problem? For instance, Juice-Shop run on port 3000. Another approch we could follow is to install the docker locally and then, in the yml file specifying to get that resource locally.


## 12/05/2022
GROUP
- Introduction to PenTest activity (meeting organised and conducted by Ulf).
- Grant admin privileges on the AWS account (e.g., we can now create EKS cluster)

@ciastron
- Continue studying K8s.
- Set up SSH connections amongs VM and host machine to easy deploy solutions in Linux.
- Create script (see scripts folder) to install the correct version of AWS, kubectl and eksctl.
- Deploy Juice Shop application as a container in EKS. See ymlFiles folder to see the yml deployment and service K8s objects.
- Run cloudmapper over the cluster. See cloudmapper instructions in audit folder.


@RuffyJK
- Started to follow a course on how to use and setup Terraform.
- Further research on Kubernetes.
- After receiving permissions on AWS, created a new EC2 and a Cluster with 3 Nodes.
- Deployed the JuiceShop Web Application ( 3 replicas) with LoadBalancer service.
- Destroyed the Cluster

@nuri4444

## 13/05/2022

@ciastron
- See README
- Deploy the two applications (demo)

@RuffyJK
- Continued the course of Terraform Essential on Cloudguru.
- Redeployed the Cluster and JuiceShop Application and Services
- Installed and used Cloudmapper for Network Diagram
- Deploying the vulnerable API Vampi on my Kubernetes.

@nuri444

## 16/05/2022
GROUP
- Team meeting to discuss the next steps and define the workflow with the steps *backlog - on going - done*
   - Studying network diagram.
   - Automation tool for the deployment (e.g., Terraform, GitOps).
   - Start pentest the application.
   - Run CloudMapper and Scoutsuite on the cluster (audit).

@ciastron
- Work on the definition of the next tasks.
- Start to pentest VampI API and create the github folder for the final report of VampI pentest.

@RuffyJK
- Started working on a Terraform script to deploy EKS and Juice Web Shop, Vampi API.
- Deployed Vampi API on localhost for further pentesting.

@nuri4444
- Research on CSRF
- Doing Labs on Portswigger
- Vampi API testing


Question to ask:
- How the network diagram should look like? (ask a sample of network diagram to Ulf or Raad) 
- Show Cloud mapper diagram (local machine) and AWS one ([example](https://tf-eks-workshop.workshop.aws/500_eks-terraform-workshop/510_scenario/intro.html)). Which one?
- How to represent namespace and pods in the previous diagram? Aren't they in a different dimension? Should we configure by ourselves the IP net address?

## 17/05/2022

@ciastron
- Lost against RuffyJK 5 - 0 on 16/05/2022 in table tennis.
- See report of 18/05/2022

@RuffyJK
- Continued to work on the terraform script. Installed Visual Studio Code and installed Terraform Extension.
- Installed TFsec extension. TFsec uses static analysis of your terraform code to spot potential misconfigurations.
- TFsec is easy to integrate into a CI pipeline and has a growing library of checks against all of the major cloud providers and platforms like Kubernetes.

@nuri4444

## 18/05/2022
@ciastron
- Pentest VampI and create the tool to brute force the JWT token. See [JWT Brute Force](https://github.com/ciastron/JWT_brute_force)
- Start createing the network diagrams for the EKS infrastructure. See [README](README.md#network-diagram)
- Checked how PODS communicate between each other. To do that in the deployments YAML file you need to add a "sidecar" container
```
containers:
- name: vampi
  image: mhosencloudyrion/vampi-api
- name: sidecar
  image: curlimages/curl
  command: ["/bin/sh"]
  args: ["-c", "echo Hello from the sidecar container; sleep 300"] 
```
 Then, to log into a POD, run the command `kubectl exec -it vampi-7b89896c8f-sn8gm -c sidecar -n vulnerable-ns -- /bin/sh`
 Try to ping other pods using their (private) IP address.
@RuffyJK

@nuri4444
