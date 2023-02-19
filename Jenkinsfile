
pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    environment {
        dockerhub=credential("Docker-hub")
    }
    
  
    stages {
        stage('source') {
            steps {
               git 'https://github.com/NidhiThakur12/DevopsLearn.git'

            }
            }            
        
         stage('build') {
            steps {
                sh 'mvn -f pom.xml -B -DskipTests clean install'
            }
            
        }
        
  stage('Docker Build and Tag') {
           steps {
              
                sh 'docker build -t devops-learn:latest .' 
                sh 'docker tag devops-learn nidhi1203/devops-learn:latest'
               
          }
        }
     
  stage('Publish image to Docker Hub') {
          
            steps {
        withDockerRegistry([ credentialsId: "Docker-hub", url: "" ]) {
          sh  'docker push nidhi1203/devops-learn:latest' 
        }
                  
          }
        }
       
        
    }
}
