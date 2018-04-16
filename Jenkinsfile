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
           }
        }
        stage('Qmake') {
            steps {
                dir('silverkey/src') {
                    sh 'qmake -makefile'
                }
            } 
        }
        stage('Qmake') {
            steps {
                dir('silverkey/src') {
                    sh 'make'
                }
            } 
        }
        
    }
}
