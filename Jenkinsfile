pipeline {
    
    agent {
      dockerfile true
      
    }
    stages {
        stage('Clone sources') {
            sh 'cd /tmp && git clone http://github.com/metacoma/silverkey.git'
            sh 'cd /tmp/silverkey && git checkout cppqt'
            sh 'cd /tmp/silverkey/src && qmake && make'
        }
    }
}
