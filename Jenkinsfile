pipeline {
  agent any
  stages {
    stage('get') {
      steps {
        sh '''uname -a
ls -a
pwd
cat /etc/issue
#curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
#cp -a kubectl ../
#chmod +x kubectl
#mv ../kubectl /usr/bin/kubectl
#kubectl --help
#chmod +x ../kubectl
#ln -s /usr/bin/kubectl ../kubectl
#echo ${WORKSPACE}
apk info docker
apk add docker'''
      }
    }

  }
}