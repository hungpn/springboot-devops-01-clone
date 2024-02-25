pipeline {
    agent { 
        node {
            label 'docker-agent-alpine'
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
