# acceleration-helm

# Join-devops-challenge
to deploy Typescript and Node.js app using helm do the following:

    1- Create an image for every microservice using the Docker file 
        docker build --target acceleration-a -t repo/name:tag .
    2- Use helm  files
    3- create deployment for these apps

  
   

create deployment, service for every appy  and ingress resources(only for calc):

	helm intsall nginx-ingress
  	helm install acceleration ./acceleration
	
Pre-requisite is to have a ingress controller running in the cluster.
If an ingress controller is not present in the current cluster, you can use the helm repo 'https://kubernetes.github.io/ingress-nginx'.
Add the repo to helm and fetch the nginx-ingress. A version that is tested with my microservices is added here. Alterntively you can use this.
  
   
