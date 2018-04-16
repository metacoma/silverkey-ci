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
                sh 'pwd'
                    sh 'ls'
           }
        }
        stage('qmake') {
            steps {
                dir('silverkey/src') {
                    sh 'pwd'
                    sh 'ls'
                    sh 'qmake -makefile'
                }
            } 
        }
        stage('make') {
            steps {
                dir('silverkey/src') {
                    sh 'make'
                }
            } 
        }
        
    }
}
