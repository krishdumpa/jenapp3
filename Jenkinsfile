pipeline {
  agent any
  stages {
    stage('code checkout') {
      steps {
        sh 'ls'
      }
    }

    stage('build') {
      steps {
        sh '/opt/maven38/bin/mvn clean package'
      }
    }

    stage('deploy') {
      steps {
        sh 'scp /target/jenapp3 root@10.0.5.204:/opt/tomcat/webapps'
      }
    }

  }
}
