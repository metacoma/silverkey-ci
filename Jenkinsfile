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
       stage('qmake') {
            steps {
                dir('src') {
                    sh 'qmake'
                }
            }
       } 
       stage('make') {
            steps {
                dir('src') {
                    sh 'make'
                }
            }
       } 
    }
}
