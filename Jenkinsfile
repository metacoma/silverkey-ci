pipeline {
    
    agent {
      dockerfile {
        dockerfile true
        filename 'build-linux.Dockerfile'
        dir '.'
      } 
     }
    stages {
        stage('Build') {
            steps {
                sh 'id'
            }
        }
    }
}
