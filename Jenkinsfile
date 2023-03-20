pipeline {
    agent any
    environment {
        access_key = credentials('aws_access_key')
        secret_key = credentials('aws_secret_key')
    }
    stages {
        stage('terraform') {
            steps {
                sh '''
                    terraform --version
                    terraform init
                    terraform destroy -auto-approve
                    terraform apply -auto-approve -var "access_key=${access_key}" -var "secret_key=${secret_key}"
                '''
            }
        }
    }
}