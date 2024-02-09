# 1. Manually deployment
## Install maven using homebrew
```shell
brew install maven
```

## Setup java 17  
### Download and install .dmg file (apple chip)
https://download.oracle.com/java/17/archive/jdk-17.0.10_macos-aarch64_bin.dmg
### Export java 17 environment variables to .zshrc
```shell
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin
```

## Manually build jar
```shell
mvn clean package
```

## run application from jar file
```shell
java -jar ./target/devops-java-demo-01-0.0.1-SNAPSHOT.jar
```

# 2. Dockerization deployment
## Stage1: build docker with full resources
- Create a file named ***Dockerfile***
- Build docker image:
```shell
docker build -t test-java:1.0.0 .
```

- Check the docker image availability
```shell
docker images
```

## Stage2: grab jar from stage1 to stage2

- Run and forward port from docker container (8080) to localhost (8081)
```shell
docker run -it --expose 8080 -p 8081:8080 test-java:1.0.0
```