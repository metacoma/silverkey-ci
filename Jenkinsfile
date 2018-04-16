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
                sh "find"
              
              
           }
        }
    }
}
