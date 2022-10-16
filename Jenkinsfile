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
    stage('Deploy') {
      steps {
        sh 'docker run -t --name con_v1 thrisha123/project2image:v1'
      }
    }
  }
}
