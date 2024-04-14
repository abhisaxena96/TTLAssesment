# Project
Platform Engineer practical test by Tata Technologies Limited

## Use Case
Scenario -
Create a sample application to print “Welcome to 2022”and user agent info using any
programming language. <br>
● Create a VNet in Azure or VPC in AWS or GCP with your own CIDR choice using best
practices. <br>
● Build your application and create container image to deploy your application. <br>
● Deploy your application using any type of automated pipeline on container orchestration
platform in Azure or AWS or GCP. <br>
● Give us an endpoint to access your application. <br>

### Acess Restraints Observed 
ACR (Azure conatiner registry was not provided ) so used Dockerhub to push and pull images. <br>
Azure portal App Registration access or RBAC permission was not allowed to create service principal in Azure Devops to connect to Azure Portal. <br>

____________________________________________________________________________________________________________________________________________________________________
## Getting Started
This project is run and tested on Azure AKS and image buld and pushed to DockerHub. You may need to install Docker Engine, VisualCode (Optional) or any IDE, and require access to Azure portal with AKS access and Vnet access. 
I have not been granted access to create App registration to connect and run my code as a pipleine so I build the docker file locally on my system and connect AKS and ran the Kubernetes template file to create a deployment and service in the cluster.

Project Stack - Docker, AKS, Azure Portal, DockerHub(For image) <br>
To Pull my docker image use command - docker pull abhisaxena96/ttlnginx <br>
 
• *Dockerfile* - The docker file is used for deploying "Welcome to 2022" application wrriten in simple HTMl on a nginx base image container. <br>
• *index.html* - Index.html file is used to copy the file in the docker image and replace the default index.html file provided with nginx install. <br>
• *AKS Templates/deployment.yaml* - A kubernetes kind deployment has been created to run mutiple nginx pod of replica 3 running on a container port 80. <br>
• *AKS Templates/service.yaml* -  A Kubernetes kind service has been created of type loadbalancer to access the application on a public endpoint while maintaing the traffic in either of the pods. <br>

### How to Access 
*Site can be launched on endpoint : http://4.186.11.87/*


