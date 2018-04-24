pipeline {
  agent none

  stages {
    stage('Build') {
      parallel {
        stage('linux') {
          agent {
            dockerfile {
              label 'master'
            }
          }
          steps {
            git (
              url: "$GIT_URL",
              branch: "$GIT_BRANCH"
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
          steps {
            git (
              url: "$GIT_URL",
              branch: "$GIT_URL"
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
