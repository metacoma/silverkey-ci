pipeline {
    agent {
      dockerfile {
        filename 'build-linux.Dockerfile'
        dir '.'
        label 'latest'
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
