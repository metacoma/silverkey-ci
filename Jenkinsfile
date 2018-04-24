pipeline {
  agent none

  stages {
    stage('Clone sources') {
      parallel {
        stage('Linux') {
          agent {
            dockerfile {
              label 'master'
            }
          }
          steps {
            git (
              url: "http://github.com/metacoma/silverkey.git",
              branch: "cppqt"
            )
            dir('src') {
              sh 'qmake'
              sh 'make'
            }
          }
        }
      }
    }
  }
}
