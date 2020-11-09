#!/bin/bash
mvn clean package -DskipTests -Ptekton

kubectl delete deployment dekorate-tekton-example

kubectl delete -f target/classes/META-INF/dekorate/tekton-task-run.yml
kubectl delete -f target/classes/META-INF/dekorate/tekton-task.yml

kubectl apply -f target/classes/META-INF/dekorate/tekton-task.yml
kubectl apply -f target/classes/META-INF/dekorate/tekton-task-run.yml

tkn taskrun logs dekorate-tekton-example-run-now -f
