node('built-in')
{
    stage('ContinuousDownload')
    {
        git 'https://github.com/tvssp1997/maven1.git'
    }
    stage('ContinuousBuild')
    {
        sh 'mvn package'
    }
    stage('ContinuousDeployment')
    {
       deploy adapters: [tomcat9(credentialsId: 'ffa135be-946d-491b-a3b9-c32dcdaa3af7', path: '', url: 'http://172.31.12.47:8080')], contextPath: 'prod', onFailure: false, war: '**/*.war'
    }
    stage('ContinuousTesting')
    {
        git 'https://github.com/tvssp1997/FunctionalTesting1.git'
        sh 'java -jar /var/lib/jenkins/workspace/scriptedpipeline/testing.jar'
    }
    stage('ContinuousDelivery')
    {
        deploy adapters: [tomcat9(credentialsId: 'ffa135be-946d-491b-a3b9-c32dcdaa3af7', path: '', url: 'http://172.31.4.160:8080')], contextPath: 'prod', onFailure: false, war: '**/*.war'
    }
