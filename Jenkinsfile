pipeline {
    agent { 
        //node {
        //    label 'docker-agent-dind'
        //}

        docker {
            image 'docker:latest'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
        
      }
    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }

        stage('build') {
            steps {
                echo "start"
                sh '''
                    docker build -t test-java:1.0.0 .
                '''
            }
        }
    }
}
