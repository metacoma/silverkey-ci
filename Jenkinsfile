pipeline {
    
    agent {
      dockerfile true
      
    }
    stages {
        stage('Clone sources') {
            steps {
                git (
                    url: "http://github.com/metacoma/silverkey.git",
                    branch: "cppqt"
                )
                dir('silverkey/src') {
                    sh 'qmake'
                    sh 'make'
                }
                /*
                sh 'cd /tmp && git clone http://github.com/metacoma/silverkey.git'
                sh 'cd /tmp/silverkey && git checkout cppqt'
                sh 'cd /tmp/silverkey/src && qmake && make'
                */
                sh 'pwd'
                sh 'ls' 
            }
        }
    }
}
