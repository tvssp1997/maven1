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
				sh 'pwd'
                sh 'mvn package'
            }
        }
        stage("Upload Artifact to Nexus"){
            steps{
                nexusArtifactUploader artifacts: [[artifactId: '$(POM_ARTIFACTID)', classifier: '', file: 'webapp/target/$(POM_ARTIFACTID)-$(POM_VERSION).$(POM_PACKAGING)', type: '$(POM_PACKAGING)']], credentialsId: '6bc4538b-3c4f-4ae9-bce7-eeaf36e10427', groupId: '$(POM_GROUPID)', nexusUrl: '172.31.5.66:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'firstapp', version: '$(POM_VERSION)'
            }
        }
    }
}
