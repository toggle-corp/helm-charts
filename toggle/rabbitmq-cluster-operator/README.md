## Delete

Delete all existing clusters

Then delete non namespace resources
```bash
kubectl delete customresourcedefinitions.apiextensions.k8s.io rabbitmqclusters.rabbitmq.com
kubectl delete clusterrolebindings.rbac.authorization.k8s.io rabbitmq-cluster-operator-rolebinding
kubectl delete clusterrole rabbitmq-cluster-operator-role rabbitmq-cluster-service-binding-role
```
> NOTE: Delete resources created by operator manifest: https://www.rabbitmq.com/kubernetes/operator/install-operator#installation
