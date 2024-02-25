pipeline {
    agent any

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
                    sleep 600000
                    docker build -t test-java:1.0.0 .
                '''
            }
        }
    }
}
