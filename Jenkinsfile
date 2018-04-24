pipeline {
  agent none

  environment {
    JOB_GIT_URL = "https://github.com/metacoma/silverkey"
    JOB_GIT_BRANCH = "cppqt"
  }


  stages {
    stage('Build') {
      parallel {
        stage('linux') {
          agent {
            dockerfile {
              reuseNode true
              label 'master'
            }
          }
          steps {
            git (
              url: "$JOB_GIT_URL",
              branch: "$JOB_GIT_BRANCH"
            )
            dir('src') {
              sh 'qmake'
              sh 'make'
            }
          }
        }
        stage('osx') {
          agent {
            label 'mac-slave'
          }
          environment {
            JOB_GIT_URL = "/tmp/silverkey-build-dir-${env.BUILD_NUMBER}"
          }
          steps {
            git (
              url: "$JOB_GIT_URL",
              branch: "$JOB_GIT_URL"
            )
            dir('src') {
              sh '/usr/local/Cellar/qt/5.10.1/bin/qmake'
              sh 'make'
            }
          }
        }
      }
    }
  }
}
