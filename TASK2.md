# - create a repository on personal dockerhub
# - name the repository "test-java-hub" (freely to change to another name) 
# - login the to docker from terminal
```shell
docker login -u <USER_NAME> -p <PASSWORD> docker.io
```
# - change tag local image to remote image which contained on repository
```shell
docker tag test-java:1.0.0 hungpn123/test-java:1.0.0
```
# - push to docker hub from local:
```shell
docker push hungpn123/test-java-hub:test-java
```
