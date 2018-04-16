pipeline {
    checkout scm
    agent {
      dockerfile {
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
