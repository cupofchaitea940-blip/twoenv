pipeline {
    agent any

    environment {
        ARM_CLIENT_ID       = credentials('azure-client-id')
        ARM_CLIENT_SECRET   = credentials('azure-client-secret')
        ARM_SUBSCRIPTION_ID = credentials('azure-subscription-id')
        ARM_TENANT_ID       = credentials('azure-tenant-id')
    }

    stages {
        stage('Terraform Deploy') {
            steps {
                script {
                    if (env.BRANCH_NAME == 'dev') {
                        dir('dev') {
                            bat 'terraform init'
                            bat 'terraform validate'
                            bat 'terraform plan -var-file="terraform.tfvars"'
                            bat 'terraform apply -auto-approve -var-file="terraform.tfvars"'
                        }
                    }

                    else if (env.BRANCH_NAME == 'main') {
                        dir('prod') {
                            bat 'terraform init'
                            bat 'terraform validate'
                            bat 'terraform plan -var-file="terraform.tfvars"'
                            bat 'terraform apply -auto-approve -var-file="terraform.tfvars"'
                        }
                    }
                }
            }
        }
    }
}