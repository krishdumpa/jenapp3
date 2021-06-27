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
        sh 'scp /var/lib/jenkins/workspace/jenapp3-pipeline/target/jenapp3.war root@10.0.5.204:/opt/tomcat/webapps'
      }
    }

  }
}
