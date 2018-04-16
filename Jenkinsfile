pipeline {
    
    agent {
      dockerfile true
      
    }
    stages {
        stage('Clone sources') {
                git url: 'https://github.com/metacoma/silverkey.git'
        }
    }
}
