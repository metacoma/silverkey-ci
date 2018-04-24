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
              url: "http://github.com/metacoma/silverkey.git",
              branch: "cppqt"
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
