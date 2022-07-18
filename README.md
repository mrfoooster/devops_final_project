##
Publisher: Mert Cem Tatar

Used Technologies: Docker, Kubernetes, GitLab, AWS, Terraform

Docker: Dockerfile is composed of a default ReactJs file built with "npm'. Alpine used as a base to lower the initial size of it. 
        Which resulted around 710 mb. After compression in DockerHub, size reduced to 178mb. 
        
        https://hub.docker.com/repository/docker/mrfoooster/docker-react .   Link for the open source.
        
Image has been uploaded to AWS server in ECS FARGATE based on London. 
        
For this process:
Firstly a security group has been created in EC2.
Secondly, a load balancer has been created, required options has to be selected based on our Docker Image.
Thirdly, a cluster has been created in ECS. Followed by a task definon.
After these stages, our service is created based on the previus points. As requested, an alarm has been set for the CPU usage if it goes %50 or             %20. 

Due to AWS Clusters limited sharing oppurtunities outside of company work, please contact in case the resource check is required.
          
 A bash script has been written for emergency alerts in case CPU rises above %90 usage.

Terraform: In this instance, terraform has been used to provide provision for the created AWS cluster as an instence. 

Kubernetes: In order to create the neccesary files: npm, kubectl, minikube, Docker and NodeJs has to be installed.

GitLab: Raw files have been provided in the main_branch seciton. 

https://gitlab.com/foster5/koko-project-2  for pipeline control, gitlab link has been provided.
