pipeline {
    
    agent {
      dockerfile true
      
    }
    stages {
        stage('Build') {
            steps {
                sh 'cd /tmp'
                sh 'git clone https://github.com/metacoma/silverkey'
                sh 'cd silverkey'
                sh 'git checkout cppqt'
                sh 'cd src'
                sh 'qmake'
                sh 'make'
            }
        }
    }
}
