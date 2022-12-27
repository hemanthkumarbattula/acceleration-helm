# acceleration-helm

<img width="540" alt="solution-network-diagram" src="https://user-images.githubusercontent.com/27859101/209586051-f315618b-b688-4c09-b400-7c37424a8c23.PNG">


# Join-devops-challenge
to deploy Typescript and Node.js app using helm do the following:

    1- Create an image for every microservice using the Docker file 
        	docker build --target acceleration-a -t repo/name:tag .
		docker build --target acceleration-dv -t repo/name:tag .
		docker build --target acceleration-calc -t repo/name:tag .
    2- Use helm  files
    	i) if an ingress controller is already available in the kuberenetes cluster. Just deploy the 3 microservices:
			helm install acceleration ./acceleration
	
	ii) If you want both ingress controller and microservices to be installed together in the cluster, run:
			helm install acceleration acceleration-0.1.0.tgz
			
	iii) if you want to install only an ingress controller run:
		
			helm install nginx-ingress ingress-nginx-4.4.0.tgz
			
    3- create deployment for these apps
	
Pre-requisite is to have a ingress controller running in the cluster.
If an ingress controller is not present in the current cluster, you can use the helm repo 'https://kubernetes.github.io/ingress-nginx'.
Add the repo to helm and fetch the nginx-ingress. A version that is tested with my microservices is added here. Alterntively you can use this.
  
   
