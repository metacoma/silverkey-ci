    
pipeline {
    
    stages {
        stage('Clone sources') {
            agent {
               dockerfile true
            }
            steps {
                git (
                    url: "http://github.com/metacoma/silverkey.git",
                    branch: "cppqt"
                )
            }
       }
       stage('qmake') {
           agent {
               dockerfile true
            }
            steps {
                dir('src') {
                    sh 'qmake'
                }
            }
       } 
       stage('make') {
            agent {
               dockerfile true
            }
            steps {
                dir('src') {
                    sh 'make'
                }
            }
       } 
    }
    /*
    post { 
        failure { 
            step([$class: 'GitHubIssueNotifier',
      issueAppend: true,
      issueLabel: '',
      issueTitle: '$JOB_NAME $BUILD_DISPLAY_NAME failed'])
        }
    }
    */
    
}
}
