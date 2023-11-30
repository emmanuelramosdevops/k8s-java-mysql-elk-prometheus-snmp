# Song Ranking API

## Description
Provides a simple API and External API service.

## Dependencies
- Java 17+
- Gradle 8.1.1
- Spring Boot 3.1.4
- MySQL 8.0.32
- Environment Variables
  - LOG_LEVEL - e.g: INFO/DEBUG
  - POD - Assigned **auto** by deployment.
  - spring.profiles.active: e.g: localk8s.

## K8s Cluster

### 1. Installing Docker Desktop
Official documentation at: [Docker Desktop Install](https://docs.docker.com/desktop)


### 2. Installing Minikube
Official documentation at: [Minikube Install](https://minikube.sigs.k8s.io/docs/start)


### 3. Minikube Cluster Setup
With Docker Desktop running, execute this command:
```
minikube start -p api --nodes 3 --memory 8192 --cpus 3

kubectl label node api node-group=control-plane

kubectl label node api-m02 node-group=infra

kubectl label node api-m03 node-group=app

kubectl create ns api

kubectl create ns infra

minikube ssh -p api --node api-m03

mkdir -p /var/log/api

sudo chown -R 1001:1001 /var/log/api
```

### 4. Installing Tools
### MySQL
Access the k8s/mysql folder and run the scripts in sequence:
```
./install-crds.sh

./install-cluster.sh
```

#### Elastic Search
Access the k8s/elasticsearch folder and run:
```
./restart
```

### FileBeat
Access the k8s/filebeat folder and run:
```
./restart
```

### Grafana
Access the k8s/grafana folder and run:
```
./restart
```

Run the script "reset-password.sh" to redefine the admin password, passing the new one as argument:
```
./reset-password <new pass>
```

### Victoria Metrics Cluster

| App              | Port |  
|------------------|------|
| VM Insert        | 8480 | 
| VM Storage       | 8482 |  
| VM Select        | 8481 |    
| VM Agent         | 8429 | 
| VM Alert Server  | 8880 |   
| VM Alert Manager | 9093 |    

Access the k8s/victoria-metrics/cluster folder and run:
```
./restart
```

### Victoria Metrics Agent
Acessar a pasta k8s/victoria-metrics/agent e executar o script "restart.sh":
```
./restart
```

### Victoria Metrics Alert Manager
Acessar a pasta k8s/victoria-metrics/alert e executar o script "restart.sh":
```
./restart
```



### SNMP Server
Acessar a pasta k8s/snmp/server e executar o script "restart.sh":
```
./restart
```

### SNMP Notifier
Acessar a pasta k8s/snmp/notifier e executar o script "restart.sh":
```
./restart
```
