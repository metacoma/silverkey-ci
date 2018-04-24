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
          steps {
            checkout(
              [$class: 'GitSCM',
                branches: [[name: '*/master']],
                doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CleanBeforeCheckout']], submoduleCfg: [], userRemoteConfigs: [[url: 'http://github.com/metacoma/silverkey']]])
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
