pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    environment {
        NODE_ENV='production'
    }
    
  
    stages {
        stage('source') {
            steps {
               git 'https://github.com/NidhiThakur12/DevopsLearn.git'

            }
            }            
        
         stage('build') {
            steps {
                sh 'mvn -f DevopsLearn/pom.xml -B -Dmaven.test.failure.ignore=true install'
            }
            
        }
        
         stage('saveArtifact') {
            steps {
              archiveArtifacts artifacts: '**', followSymlinks: false
            }
            
        }
        
        
        
    }
}
