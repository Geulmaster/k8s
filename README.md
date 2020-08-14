# k8s
some yamls and useful commands

```*Run NGINX:
kubectl run nginx --image nginx

*Use YAML:
kubectl create -f file.yml

*Replicas status:
kubectl get replicationController
kubectl get replicaSet

*Update Replicas:
kubectl replace -f file.yml
*Scale:
kubectl scale --replicas=<num> -f file.yml
*Delete:
kubectl delete replicaSet <myApp-replicaSet>

*Deployments:
kubectl create -f deployment.yml --record
kubectl apply -f deployment.yml
kubectl delete <deployment>
kubectl get deployments

*Services:
kubectl create -f service.yml
kubectl get services

*General:
kubectl get all
kubectl delete pod <name>
kubectl describe pods/deployments
```
