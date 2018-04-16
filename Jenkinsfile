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
                    sh 'find'
                    sh 'qmake'
                    sh 'make'
                }
              
              
           }
        }
    }
}
