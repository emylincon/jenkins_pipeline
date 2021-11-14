# Run jenkins on docker
```
docker run -u root -d -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker -v jenkins-vol:/var/jenkins_home jenkins/jenkins:lts
```

## Add credentials cli
```
export AWS_ACCESS_KEY_ID="AXXXXXXXXXXXXXX"
export AWS_SECRET_ACCESS_KEY="EXXXXXXXXXXXXXXXXXXXXXXXXXX"
```
## login to docker
```
docker login
```

## Create docker context
```
docker context create ecs myecscontext --from-env
docker context use myecscontext
```