pipeline {
    agent any

    triggers {
        pollSCM('* * * * *')
    }

    environment {
        ARM_CLIENT_ID       = credentials('azure-client-id')
        ARM_CLIENT_SECRET   = credentials('azure-client-secret')
        ARM_SUBSCRIPTION_ID = credentials('azure-subscription-id')
        ARM_TENANT_ID       = credentials('azure-tenant-id')
    }

    stages {
        stage('Deploy Dev') {
            steps {
                dir('dev') {
                    bat 'terraform init'
                    bat 'terraform apply -auto-approve'
                }
            }
        }

        stage('Deploy Prod') {
            steps {
                dir('prod') {
                    bat 'terraform init'
                    bat 'terraform apply -auto-approve'
                }
            }
        }
    }
}