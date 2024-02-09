### Requirements
#### Task 1
- Tìm hiểu Docker, Viết Dockerfile cho Java Spring boot
+ Expected output: 
   - 1 Docker image
			- Chạy docker image trên local
- Docker là gì?
- Cách tạo 1 docker file
- Docker multi stages: tại sao cần multi stages? advantages of multi stages?

#### Task 2
- publish the local docker image to the docker hub
- optimize resources
  
#### Task 3
- Viết pipeline CI/CD trên Jenkins

#### Task 4
- Deploy lên server (K8S)

### Build a docker image
docker build -t test-java:1.0.1 .

### List all images in your local machine
docker images

### Run the docker image
docker run test-java:1.0.1
