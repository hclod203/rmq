#!groovy
pipeline {
    environment{
        registry = "hcloud203/rmq"
	dir = "3.8/debian-10/"
        registryCredential = 'dockerhub_id'
        dockerImage = ''
    }
    agent any
    stages{
        stage ('Cloning Git') {
            steps {
            withCredentials([usernamePassword(credentialsId: 'github_id', passwordVariable: 'aruba123$', usernameVariable: 'hcloud203@gmail.com')])
          {sh('''
                rm -rf rmq
                git config --global credential.username hcloud203@gmail.com
                git config --global credential.helper "!echo password=aruba123$; echo"
                git clone https://github.com/hclod203/rmq.git
                ''')
            }
        }
    }
          stage('build') {
              steps{
		script {
			dockerImage = docker.build registry + ":$BUILD_NUMBER"
		}
              }
              }


    }
}
