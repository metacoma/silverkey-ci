    
pipeline {
    node('master') { 

    agent {
      dockerfile true
      label 'slave'
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
