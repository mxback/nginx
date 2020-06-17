pipeline {
  agent any
  stages {
    stage('get') {
      steps {
        sh '''uname -a
ls -a
pwd
cat /etc/issue
apk info curl'''
      }
    }

  }
}