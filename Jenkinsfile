pipeline {
  agent any
  environment {
    DOCKERHUB_CREDENTIALS=credentials('DockerHubAccount')
  }
  stages {
    stage('Build') {
      steps {
	sh 'docker build -t thrisha123/project2image:v1 .'
      }
    }
    stage('Login') {
      steps {
        sh 'docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB_CREDENTIALS_PSW'
      }
    }
  }
  post {
    always {
      sh 'docker logout'
    }
  }
}
