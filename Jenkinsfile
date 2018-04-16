pipeline {
    
    agent {
      dockerfile true
      
    }
    stages {
        stage('Build') {
            steps {
                dir('/tmp') {
                    sh 'git clone https://github.com/metacoma/silverkey'
                    dir('silverkey') {
                        sh 'git checkout cppqt'
                        dir('src') {
                            sh 'qmake'
                            sh 'make'
                        }
                    }
                }
                
                
                
            }
        }
    }
}
