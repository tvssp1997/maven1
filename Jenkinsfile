pipeline{
    agent any
    stages{
        stage("Contnuous Download"){
            steps{
                git 'https://github.com/tvssp1997/maven1.git'
            }
        }
        stage("Continuous Build"){
            steps{
                sh 'mvn package'
            }
        }
        stage("Upload Artifact to Nexus"){
            steps{
                nexusArtifactUploader artifacts: [[artifactId: '$(POM_ARTIFACTID)', classifier: '', file: 'webapp/target/$(POM_ARTIFACTID)-$(POM_VERSION).war', type: 'war']], credentialsId: 'a4562f89-d272-41dd-b60b-74849a7031b3', groupId: '$(POM_GROUPID)', nexusUrl: '13.233.126.121:8081/repository/firstapp/', nexusVersion: 'nexus3', protocol: 'http', repository: 'firstapp', version: '$(POM_VERSION)'
            }
        }
    }
}
