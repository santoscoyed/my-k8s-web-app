# my-k8s-web-app
This repository contains the root files needed to deploy a website onto a Kubernetes cluster in a local PC.


## Technology 
- Minikube v1.28.0. This is the platform for creating a Kubernetes environment on a local machine.
- Docker Desktop. This is needed for building and/or running Docker images from scratch.

## Dependencies
- Dockerfile. This is included in this repo. It runs a container off of the official Nginx Docker image from Docker Hub and then it copies local HTML files of our custom web page.
- Kubernetes API files. These are the files that define Kubernetes objects in YAML syntax. For this deployment, we need "Deployment" and "Service" objects to create our virtual infrastructure, which will encapsulate this nginx Docker image into a Kubernetes pod, which in turn, will be assigned a local port to be accessed from a browser.

## Application
Run the following command from the CLI *inside* the local project directory. The purpose of this is to forward a local port to the virtual Kubernetes ClusterIP (which is the architecture used in this project, as defined in service object).
```
kubectl port-forward service/my-web-server 50511:80
```
> Note: replace 50511 with any other available local port, as desired.
