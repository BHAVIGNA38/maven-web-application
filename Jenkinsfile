node{
def mavenHome = tool name: "maven 3.8.4"
properties([buildDiscarder(logRotator(artifactDaysToKeepStr: '', artifactNumToKeepStr: '5', daysToKeepStr: '', numToKeepStr: '10')), [$class: 'RebuildSettings', autoRebuild: false, rebuildDisabled: false], [$class: 'JobLocalConfiguration', changeReasonComment: ''], pipelineTriggers([pollSCM('* * * * *')])])

stage('CheckoutCode'){
git branch: 'development', credentialsId: '6da21e15-597b-4d21-959f-18c110a01c40', url: 'https://github.com/BHAVIGNA38/maven-web-application.git'
}

stage('Build'){
sh "${mavenHome}/bin/mvn clean package"
}
/*
stage('ExecuteSonarQubeReport'){
sh "${mavenHome}/bin/mvn sonar:sonar"
}

stage('UploadArifactsIntoNexus'){
sh "${mavenHome}/bin/mvn deploy"  
}

stage('DeployAppIntoTomcatSever'){
    
sshagent(['d1b1a86f-a021-49a2-9696-b84ea530331a']) {
   sh "scp -o StrictHostKeyChecking=no target/maven-web-application.war ec2-user@13.127.145.147:/opt/apache-tomcat-9.0.58/webapps/"

}
}
 
stage('SendEmailNotification'){
    emailext body: '''Build Over
Regards
Bhavigna Reddy''', subject: 'Build Over', to: 'psbnreddy@gmail.com'
} 
*/  
}


