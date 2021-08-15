pipeline {
  agent any
  stages {
    stage('code checkout') {
      steps {
        git(url: 'git@github.com:krishdumpa/jenapp3.git', branch: 'master')
      }
    }

    stage('build') {
      steps {
        sh '/opt/maven38/bin/mvn clean package'
      }
      post{
        success{
          archiveArtifacts '**/*.war'
        }
      }
    }
    stage('test') {
      steps {
        sh '/opt/maven38/bin/mvn test'
      }
      post{
        always{
          junit '**/*.xml'
        }
      }
    }
    stage('deploy') {
      steps {
        sh 'scp /var/lib/jenkins/workspace/jenapp3-pipeline/target/jenapp3.war root@10.0.5.204:/opt/tomcat/webapps'
      }
    }

  }
}
