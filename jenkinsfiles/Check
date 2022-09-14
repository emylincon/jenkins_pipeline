pipeline{
    agent {label "master"}
    environment {
        AWS_DEFAULT_REGION="eu-west-1"
    }
    stages{
        stage('aws'){
            steps{
                withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId:'aws_credential', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                sh '''
                aws --version
                aws ec2 describe-instances
                '''
                }
            }
        }
        stage('docker'){
            steps{
                sh '''
                docker --version
                docker info
                '''
            }
        }
    }
}