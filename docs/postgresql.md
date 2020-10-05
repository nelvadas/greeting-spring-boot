# Setup Postgresql on kubernetes cluster

## Install HELM 3

```
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
```

## Add a repository to helm
```
helm repo add stable https://kubernetes-charts.storage.googleapis.com/
```
```
helm repo add bitnami https://charts.bitnami.com/bitnami
```

## Check the repositories
```
$ helm repo list
NAME    URL
stable  https://kubernetes-charts.storage.googleapis.com/
bitnami https://charts.bitnami.com/bitnami
```



## Search postgresql from the stable repo
```
helm search repo stable/postgresql
NAME                    CHART VERSION   APP VERSION     DESCRIPTION
stable/postgresql       8.6.4           11.7.0          DEPRECATED Chart for PostgreSQL, an object-rela...
``` 

## Search postgresql from bitnami
```
helm search repo bitnami/postgresql
NAME                    CHART VERSION   APP VERSION     DESCRIPTION
bitnami/postgresql      9.8.1           11.9.0          Chart for PostgreSQL, an object-relational data...
bitnami/postgresql-ha   3.8.1           11.9.0          Chart for PostgreSQL with HA architecture (usin...
```

## Install a valid postgresql instance 
```
helm install pg-db-01  --set persistence.enabled=false --set postgresqlPassword=Secret01#,postgresqlDatabase=modelis-pg-db  bitnami/postgresql
```

# Docs
https://helm.sh/docs/intro/install/
https://github.com/helm/charts/tree/master/stable/postgresql
