# k8s
# some yamls and useful commands

> Run NGINX:
- kubectl run nginx --image nginx

> Use YAML:
- kubectl create -f file.yml

> Replicas status:
- kubectl get replicationController
- kubectl get replicaSet

> Update Replicas:
- kubectl replace -f file.yml
> Scale:
- kubectl scale --replicas= $num$ -f file.yml
> Delete:
- kubectl delete replicaSet $myApp-replicaSet$

> Deployments:
- kubectl create -f deployment.yml --record
- kubectl apply -f deployment.yml
- kubectl delete $deployment$
- kubectl get deployments
- kubectl expose deployment $deploymentName$ --type=$type$
- kubectl set image $deploymentName$ $imageName$=$imageName:previousVersion$
- kubectl rollout status $deploymentName$
- kubectl rollout undo $deploymentName$

> Services:
- kubectl create -f service.yml
- kubectl get services
- kubectl describe svc $serviceName$

> Nodes:
- kubectl label node $nodeName$ node-role.kubernetes.io/$key$=$value$ (label)
- kubectl label node $nodeName$ node-role.kubernetes.io/$value$- (unlabel)

> Namespaces:
- kubectl create namespace dev
- kubectl create -f namespace.yml
- kubectl config set-context $(kubectl config current-context) --namespace=dev

> General:
- kubectl get all
- kubectl delete pod $name$
- kubectl describe pods/deployments
- kubectl logs $pod$
- kubectl exec -it $pod$ --bash
- kubectl attach $pod$ -i

---
