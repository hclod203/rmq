pipeline {
    agent any
    environment{
        registry = "hcloud203/rabbitmq"
        registryCredential = 'aruba123'
        dockerImage = ''
    }
    stages{
        stage('Cloning Git') {
            steps {
                git 'https://github.com/hclod203/rabbitmq.git'
                }
        }
        stage('Build docker image'){
            steps{
                docker build . -t hcloud203/rmq-app + ":$DOCKER_TAG"
            }
        }
}
}
