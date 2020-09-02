pipeline {
   agent any

   stages {
      stage('compile') {
         steps {
            git 'https://github.com/rishwanthrajaa/DevOps-Project1.git'
            sh 'mvn compile'
         }
      }
      stage('test') {
         steps {
            sh 'mvn test'
         }
      }
      stage('package') {
         steps {
            sh 'mvn clean'
            sh 'mvn package'
         }
      }
      stage('deploy-docker'){
         steps{
              sh 'docker build -t "devops_cicd:$BUILD_NUMBER" .'   
              sh 'docker run -itd --name "cicd-$BUILD_NUMBER" -P devops_cicd:$BUILD_NUMBER'
          }
      }
   }
}
