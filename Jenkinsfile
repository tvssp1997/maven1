pipeline{
    agent any
    stages{
        stage("Cintnuous Download"){
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
                sh "nexusArtifactUploader artifacts: [[artifactId: 'firstapp', classifier: '', file: 'target/firstapp-1.0-SNAPSHOT.war', type: 'war']], credentialsId: '6bc4538b-3c4f-4ae9-bce7-eeaf36e10427', groupId: 'practice', nexusUrl: '13.233.126.121/:8081', nexusVersion: 'nexus3', protocol: 'http', repository: 'firstapp', version: '1.0.0' "
            }
        }
    }
}
