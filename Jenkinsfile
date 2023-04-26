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
				nexusArtifactUploader artifacts: [[artifactId: 'webapp', classifier: '', file: 'target/webapp.war', type: 'war']], credentialsId: 'a4562f89-d272-41dd-b60b-74849a7031b3', groupId: 'com.example.maven-project', nexusUrl: '13.233.126.121:8081/repository/firstapp/', nexusVersion: 'nexus3', protocol: 'http', repository: 'firstapp', version: '1.0-SNAPSHOT'
            }
        }
    }
}
