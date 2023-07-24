spec:
  containers:
    - name: foo
      image: janedoe/awesomeapp:v1
  imagePullSecrets:
    - name: myregistrykey
EOF

cat <<EOF >> ./kustomization.yaml
resources:
- pod.yaml
EOF

cat <<EOF > pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: foo
  namespace: awesomeapps
spec:
  containers:
    - name: foo
      image: janedoe/awesomeapp:v1
  imagePullSecrets:
    - name: myregistrykey
EOF

cat <<EOF >> ./kustomization.yaml
resources:
- pod.yaml
EOF

ls
kubectl get pods
ls
vim runtimepod.yaml
vim runclass.yaml
kubectl apply -f runclass.yaml
vim runclass.yaml
kubectl apply -f runclass.yaml
vim runclass.yaml
vim runtimepod.yaml
ls
kubectl delete -f mypod.yaml 
kubectl delete -f pod.yaml 
kubectl delete -f newpod.yaml 
kubectl delete -f reppod.yaml 
kubectl delete -f reppod1.yaml 
kubectl delete -f podanno.yaml 
kubectl delete -f labelpod.yaml 
kubectl get pods
kubectl delete -f custompods.yaml 
kubectl delete -f pod.yaml 
ls
kubectl get pods
ls
az account set --subscription e7c0a305-f524-44fb-a42a-a15ad11af577
az aks get-credentials --resource-group MYAZUREPRAC --name MYDEVCLUSTER
kubectl get deployments --all-namespaces=true
kubectl get pods
ls
vim mypod.yaml 
kubectl apply -f mypod.yaml
vim mypod.yaml 
kubectl apply -f mypod.yaml
vim mypod.yaml 
kubectl apply -f mypod.yaml
vim mypod.yaml 
kubectl apply -f mypod.yaml
kubectl get pods
kubectl get pods mycustomwebapp-79jwq -o yaml
kubectl delete -f mypod.yaml
vim mypod.yaml 
ls
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
kubectl delete -f newpod.yaml
vim newpod.yaml
kubectl delete -f newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
vim newpod.yaml
kubectl apply -f newpod.yaml
kubectl get pods
ls
vim lifecyclepod.yaml
kubectl apply -f lifecyclepod.yaml
kubectl get pods
kubectl get pod lifecycle-webapp
kubectl exec -it lifecycle-webapp --/bin/bash
kubectl exec -it lifecycle-webapp --bash
kubectl exec -it lifecycle-webapp bash
kubectl exec -it lifecycle-webapp bash cat /usr/share/message
kubectl exec -it lifecycle-webapp --/bin/bash cat /usr/share/message
kubectl exec -it lifecycle-webapp  cat /usr/share/message
ls
vim livenespod.yaml
kubectl apply -f livenespod.yaml
vim livenespod.yaml
kubectl apply -f livenespod.yaml
kubectl describe pod liveness-exec
kubectl get pod liveness-exec
vim httppod.yaml
vim healthz
kubectl apply -f httppod.yaml 
kubectl get pods
kubectl get nodes
ls
vim tcplivepod.yaml
kubectl apply -f tcplivepod.yaml
kubectl get pods
kubectl get nodes
vim tcplivepod.yaml
vim grpcpod.yaml
kubectl apply -f grpcpod.yaml
kubectl get pods
ls
vim newlivepod.yaml
kubectl apply -f newlivepod.yaml
vim newlivepod.yaml
kubectl apply -f newlivepod.yaml
vim newlivepod.yaml
kubectl apply -f newlivepod.yaml
vim newlivepod.yaml
kubectl apply -f newlivepod.yaml
kubectl get pods
kubectl delete -f newlivepod.yaml
vim newlivepod.yaml
kubectl apply -f newlivepod.yaml
vim newlivepod.yaml
kubectl apply -f newlivepod.yaml
vim newlivepod.yaml
kubectl apply -f newlivepod.yaml
cp newlivepod.yaml livenesspod.yaml
vim livenesspod.yaml 
kubectl apply -f livenesspod.yaml
kubectl get pods
ls
vim probespod.yaml
kubectl apply -f probespod.yaml
vim probespod.yaml
kubectl apply -f probespod.yaml
vim probespod.yaml
kubectl apply -f probespod.yaml
vim probespod.yaml
kubectl apply -f probespod.yaml
vim initpod.yaml
kubectl apply -f initpod.yaml 
kubectl get pods
kubectl get -f initpod.yaml 
kubectl describe -f initpod.yaml 
kubectl logs myapp-pod -c init-myservice
kubectl logs myapp-pod -c init-mydb
vim initser.yaml
kubectl apply -f initser.yaml 
kubectl get -f initser.yaml 
kubectl describe -f initser.yaml 
kubectl logs myapp-pod -c init-mydb
kubectl logs myapp-pod -c init-myservice
vim initnewpod.yaml
vim usernspod.yaml
kubectl apply -f usernspod.yaml 
kubectl get -f usernspod.yaml 
kubectl describe -f usernspod.yaml 
kubectl attach -it userns bash
vim usernspod.yaml
kubectl attach -it shell bash
kubcetl get pods
kubectl get pods
kubectl attach -it userns --/bin/bash
kubectl attach -it userns  bash
kubectl attach -it userns  --bash
kubectl attach -it userns  sh
for i in {1..100}; do sleep 1; if nslookup myservice; then exit 0; fi; done; exit 1
curl -X POST http://$MANAGEMENT_SERVICE_HOST:$MANAGEMENT_SERVICE_PORT/register -d 'instance=$(<POD_NAME>)&ip=$(<POD_IP>)
ls
vim statepod.yaml
kubectl apply -f statepod.yaml 
kubectl get pods
kubectl get pods -w -l app=nginx
kubectl get pods 
kubectl get service nginx
kubectl get statefulset web
kubectl get pods -w -l app=nginx
kubectl get pods -l app=nginx
for i in 0 1; do kubectl exec "web-$i" -- sh -c 'hostname'; done
kubectl get pods -l app=nginx
kubectl run -i --tty --image busybox:1.28 dns-test --restart=Never --rm
kubectl get pods -l 'app=nginx'
vim cassandra-service.yaml
kubectl apply -f cassandra-service.yaml
kubectl get -f cassandra-service.yaml
kubectl describe -f cassandra-service.yaml
kubectl get svc cassandra
vim cassandra-statefulset.yaml
kubectl apply -f  cassandra-statefulset.yaml
kubectl get -f  cassandra-statefulset.yaml
kubectl describe -f  cassandra-statefulset.yaml
kubectl get pods
kubectl get statefulset cassandra
kubectl get pods -l="app=cassandra"
kubectl exec -it cassandra-0 -- nodetool status
kubectl get statefulset cassandra
kubectl get pod -w -l app=nginx
kubectl get statefulset cassandra
vim mystatepod.yaml
vim mystateservice.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
vim mystateservice.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
vim mystatepod.yaml
kubectl apply -f mystatepod.yaml
kubectl get - f mystatepod.yaml 
kubectl get mystateset
kubectl describe - f mystatepod.yaml 
kubectl apply -f  mystateservice.yaml
vim mystateservice.yaml 
kubectl apply -f  mystateservice.yaml
vim mystateservice.yaml 
kubectl apply -f  mystateservice.yaml
kubectl get -f mystateservice.yaml 
kubectl describe  -f mystateservice.yaml 
kubectl get - f mystatepod.yaml 
kubectl describe  - f mystatepod.yaml 
kubectl apply  - f mystatepod.yaml 
kubectl apply  -f mystatepod.yaml 
kubectl get -f mystatepod.yaml 
kubectl describe  -f mystatepod.yaml 
kubectl get pods
vim mysql-configmap.yaml
vim mysql-services.yaml
vim mysql-statefulset.yaml
kubectl apply -f  mysql-configmap.yaml
kubectl apply -f  mysql-services.yaml
kubectl apply -f  mysql-statefulset.yaml
kubectl get  -f  mysql-statefulset.yaml
kubectl describe  -f  mysql-statefulset.yaml
kubectl get pods
kubectl get pods -l 'app=mysql'
ls
vim livenesspod.yaml 
vim livenespod.yaml 
vim daemonpod.yaml
kubectl apply -f  daemonpod.yaml
kubectl get -f  daemonpod.yaml
kubectl describe -f  daemonpod.yaml
kubectl get pods
kubectl get -f  daemonpod.yaml
kubectl get pods
kubectl describe -f  daemonpod.yaml
kubectl get pods -l 'app=fluentd-elasticsearch'
kubectl get pods -l 'app=fluentd-elasticsearch-d4848'
kubectl delete  -f  daemonpod.yaml
kubectl get  -f  daemonpod.yaml
kubectl describe  -f  daemonpod.yaml
kubectl apply  -f  daemonpod.yaml
kubectl get  -f  daemonpod.yaml
kubectl describe  -f  daemonpod.yaml
kubectl get pods
kubectl get pods -l 'app=fluentd-elasticsearch'
kubectl get pods -l 'app=cassandra'
ls
kubectl get pods
vim myinitcon.yaml
kubectl apply -f myinitcon.yaml
vim myinitcon.yaml
kubectl apply -f myinitcon.yaml
vim myinitcon.yaml
vim batchjob.yaml
kubectl apply -f  batchjob.yaml
kubectl get  -f  batchjob.yaml
kubectl describe  -f  batchjob.yaml
kubectl get pods
vim jobpod.yaml
kubectl apply -f  jobpod.yaml
kubectl get  -f  jobpod.yaml
kubectl describe  -f  jobpod.yaml
kubectl get pods
kubectl get pods -l 'app=pi-zvn99'
kubectl get pods -l 'name=pi-zvn99'
kubectl get pods 
kubectl describe pod pi-zvn99
kubectl describe pod pi-zvn99 -o yaml
kubectl get pod pi-zvn99 -o yaml
kubectl get job pi
kubectl describe  job pi
kubectl get job pi -o yaml
pods=$(kubectl get pods --selector=batch.kubernetes.io/job-name=pi --output=jsonpath='{.items[*].metadata.name}')
echo $pods
pods=$(kubectl get pods --selector=batch/job-name=pi --output=jsonpath='{.items[*].metadata.name}')
echo $pods
kubectl logs $pods
kubectl logs jobs/pi
kubectl get pods
kubectl logs  myapp-pod
kubectl logs  myapp-container
kubectl logs  mysql-0
kubectl logs  mysql-1
kubectl logs  mysql-2
kubectl get pods
kubectl logs  goproxy
kubectl logs  userns
kubectl logs  nginx
vim jobnewpod.yaml
kubectl apply -f jobnewpod.yaml 
kubectl get  -f jobnewpod.yaml 
kubectl describe  -f jobnewpod.yaml 
kubectl get pods
vim mycustomjobpod.yaml
kubectl apply -f mycustomjobpod.yaml 
kubectl apply -f mycustomjobpod.yaml --validate=false
vim mycustomjobpod.yaml
kubectl apply -f mycustomjobpod.yaml --validate=false
kubectl apply -f mycustomjobpod.yaml 
kubectl apply -f mycustomjobpod.yaml --validate=false
vim mycustomjobpod.yaml
kubectl apply -f mycustomjobpod.yaml --validate=false
ls
vim mycustomjobpod.yaml
vim newjobpod.yaml
kubectl apply -f  newjobpod.yaml
kubectl get  -f  newjobpod.yaml
kubectl describe  -f  newjobpod.yaml
kubectl get pods
cp newjobpod.yaml myjobremove.yaml
vim myjobremove.yaml 
kubectl apply -f myjobremove.yaml 
kubectl get -f myjobremove.yaml 
kubectl describe -f myjobremove.yaml 
kubectl get pods
kubectl get jobs
kubectl patch job/myjob --type=strategic --patch '{"spec":{"suspend":true}}'
kubectl patch job/mynewjob --type=strategic --patch '{"spec":{"suspend":true}}'
kubectl patch job/mynewcustomjob --type=strategic --patch '{"spec":{"suspend":true}}'
kubectl patch job/mynewjob --type=strategic --patch '{"spec":{"suspend":false}}'
kubectl patch job/mynewcustomjob --type=strategic --patch '{"spec":{"suspend":false}}'
kubectl get jobs
kubectl get jobs/mynewjob -o yaml
kubectl get jobs
kubectl get jobs/mynewcustomjob -o yaml
kubectl get pods -l app=mysql --watch
kubectl run mysql-client --image=mysql:5.7 -i --rm --restart=Never --  mysql -h mysql-0.mysql <<EOFCREATE DATABASE test;
CREATE TABLE test.messages (message VARCHAR(250));
INSERT INTO test.messages VALUES ('hello');
EOF

kubectl run mysql-client --image=mysql:5.7 -i --rm --restart=Never --  mysql -h mysql-0.mysql <<EOFCREATE DATABASE test;
CREATE TABLE test.messages (message VARCHAR(250));
INSERT INTO test.messages VALUES ('hello');
EOF

kubectl run mysql-client --image=mysql:5.7 -i --rm --restart=Never --  mysql -h mysql-0.mysql <<EOFCREATE DATABASE test1;
CREATE TABLE test1.newmessages (message VARCHAR(250));
INSERT INTO test1.messages VALUES ('Welcome to Devops');
EOF

kubectl run mysql-client --image=mysql:5.7 -i --rm --restart=Never --  mysql -h mysql-1.mysql <<EOFCREATE DATABASE test;
CREATE TABLE test.messages (message VARCHAR(250));
INSERT INTO test.messages VALUES ('hello');
EOF

kubectl run mysql-client --image=mysql:5.7 -i -t --rm --restart=Never --  mysql -h mysql-read -e "SELECT * FROM test.messages"
kubectl run mysql-client-loop --image=mysql:5.7 -i -t --rm --restart=Never --  bash -ic "while sleep 1; do mysql -h mysql-read -e 'SELECT @@server_id,NOW()'; done"
kubectl exec mysql-2 -c mysql -- mv /usr/bin/mysql /usr/bin/mysql.off
kubectl get pod mysql-2
kubectl exec mysql-2 -c mysql -- mv /usr/bin/mysql.off /usr/bin/mysql
kubectl get pod mysql-2
kubectl get pod mysql-1
kubectl get pod mysql-0
kubectl delete pod mysql-2
kubectl get pod mysql-2 -o wide
kubectl get pods
kubectl get pod mystateset-0 -o wide
kubectl get pod snowflake-5d4979fb45-h2dww  -o wide
kubectl get pod myapp-pod  -o wide
kubectl get nodes
kubectl drain aks-agentpool-21980493-vmss000000  --force --delete-emptydir-data --ignore-daemonsets
kubectl get pod mysql-2 -o wide --watch
kubectl get nodes
kubectl uncordoned aks-agentpool-21980493-vmss000000
kubectl uncordon aks-agentpool-21980493-vmss000000
kubectl get nodes
kubectl scale statefulset mysql  --replicas=5
kubectl get pods -l app=mysql --watch
kubectl run mysql-client --image=mysql:5.7 -i -t --rm --restart=Never --  mysql -h mysql-3.mysql -e "SELECT * FROM test.messages"
kubectl run mysql-client --image=mysql:5.7 -i -t --rm --restart=Never --  mysql -h mysql-2.mysql -e "SELECT * FROM test.messages"
kubectl run mysql-client --image=mysql:5.7 -i -t --rm --restart=Never --  mysql -h mysql-1.mysql -e "SELECT * FROM test.messages"
kubectl scale statefulset mysql --replicas=3
kubectl get pvc -l app=mysql
kubectl delete pvc data-mysql-3
kubectl delete pvc data-mysql-4
kubectl delete pod mysql-client-loop --now
kubectl delete pod mysql-client --now
kubectl get pods
kubectl delete pod mysql-0 --now
kubectl delete pod mysql-* --now
kubectl delete pod mysql-1 --now
kubectl delete pod mysql-2 --now
kubectl delete statefulset mysql
kubectl get pods -l app=mysql
kubectl delete configmap,service,pvc -l app=mysql
kubectl get pods -l app=mysql
kubectl get statefulset cassandra
kubectl get pods -l="app=cassandra"
kubectl exec -it cassandra-0 -- nodetool status
ls
for i in 0 1; do kubectl exec web-$i -- sh -c 'hostname'; done
kubectl run -i --tty --image busybox:1.28 dns-test --restart=Never --rm
ls
vim volconfig.yaml
kubectl apply -f  volconfig.yaml
kubectl apply -f  volconfig.yaml --validate=false
vim volconfig.yaml
kubectl apply -f  volconfig.yaml --validate=false
vim volconfig.yaml
kubectl apply -f  volconfig.yaml 
kubectl get pods
cp volconfig.yaml volconf.yaml
vim volconf.yaml 
kubectl apply -f  volconf.yaml 
kubectl get -f  volconf.yaml 
kubectl describe -f  volconf.yaml 
kubectl create configmap log-conf
kubectl describe -f  volconf.yaml 
kubectl delete -f  volconf.yaml 
kubectl apply -f  volconf.yaml 
kubectl get -f  volconf.yaml 
kubectl describe -f  volconf.yaml 
vim emptydirpod.yaml
kubectl apply -f  emptydirpod.yaml
kubectl get -f  emptydirpod.yaml
kubectl describe -f  emptydirpod.yaml
vim hostpathpod.yaml
kubectl apply -f  hostpathpod.yaml
ls
grace=$(kubectl get pod cassandra-0 -o=jsonpath='{.spec.terminationGracePeriodSeconds}')   && kubectl delete statefulset -l app=cassandra   && echo "Sleeping ${grace} seconds" 1>&2   && sleep $grace   && kubectl delete persistentvolumeclaim -l app=cassandra
kubectl delete service -l app=cassandra
vim newdaemonset.yaml
kubectl apply -f  newdaemonset.yaml
vim newdaemonset.yaml
kubectl apply -f  newdaemonset.yaml
vim newdaemonset.yaml
kubectl apply -f  newdaemonset.yaml
vim newdaemonset.yaml
kubectl apply -f  newdaemonset.yaml
vim newdaemonset.yaml
kubectl apply -f  newdaemonset.yaml
vim newdaemonset.yaml
kubectl apply -f  newdaemonset.yaml
vim newdaemonset.yaml
kubectl apply -f  newdaemonset.yaml
vim newdaemonset.yaml
kubectl apply -f  newdaemonset.yaml
ls
vim batc
rm -rf batc
vim batchjob.yaml 
git remote add origin https://github.com/ASHOKROCK/MYCUSTOMJAVAWEBAPPREPO.git
git init .
git remote add origin https://github.com/ASHOKROCK/MYCUSTOMJAVAWEBAPPREPO.git
git branch -M master
git status
ls
