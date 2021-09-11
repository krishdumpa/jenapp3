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
    }
    stage('Upload artifactory to Nexus') {
      steps {
        nexusArtifactUploader artifacts: [
            [
                artifactId: 'jenapp3', 
                classifier: '', 
                file: 'target/jenapp3.war', 
                type: 'war'
            ]
        ], 
        credentialsId: 'nexus3', 
        groupId: 'jenapp', 
        nexusUrl: '10.0.3.35:8081', 
        nexusVersion: 'nexus3', 
        protocol: 'http', 
        repository: 'http://nexus-alb-150549239.ap-southeast-1.elb.amazonaws.com/repository/simpleapp-release/', 
        version: '1'
      }
    }
}
 # 
#########
