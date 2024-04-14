# Heading 1
Platform Engineer practical test by Tata Technologies Limited

## Heading 2
Scenario -
Create a sample application to print “Welcome to 2022”and user agent info using any
programming language.
● Create a VNet in Azure or VPC in AWS or GCP with your own CIDR choice using best
practices.
● Build your application and create container image to deploy your application.
● Deploy your application using any type of automated pipeline on container orchestration
platform in Azure or AWS or GCP.
● Give us an endpoint to access your application.

Acess Restraints Observed - ACR (Azure conatiner registry was not provided ) so used Dockerhub to push and pull images. 
Azure portal App Registration access or RBAC permission was not allowed to create service principal in Azure Devops to connect to Azure Portal.

____________________________________________________________________________________________________________________________________________________________________

This project is run and tested on Azure AKS and image buld and pushed to DockerHub. You may need to install Docker Engine, VisualCode (Optional) or any IDE, and require access to Azure portal with AKS access and Vnet access. 
I have not been granted access to create App registration to connect and run my code as a pipleine so I build the docker file locally on my system and connect AKS and ran the Kubernetes template file to create a deployment and service in the cluster.

Project Stack - Docker, AKS, Azure Portal, DockerHub(For image)
To Pull my docker image use command - docker pull abhisaxena96/ttlnginx

DockerFiles - 
• *Dockerfile* - The docker file is used for deploying "Welcome to 2022" application wrriten in simple HTMl on a nginx base image container.
• *index.html* - Index.html file is used to copy the file in the docker image and replace the default index.html file provided with nginx install.
• *AKS Templates/deployment.yaml* - A kubernetes kind deployment has been created to run mutiple nginx pod of replica 3 running on a container port 80.
• *AKS Templates/service.yaml* -  A Kubernetes kind service has been created of type loadbalancer to access the application on a public endpoint while maintaing the traffic in either of the pods.

### Heading 3
*Site can be launched on endpoint : http://4.186.11.87/*


