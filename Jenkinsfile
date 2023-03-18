pipeline {
    agent any
    environment {
        access_key = credentials('access_key')
        secret_key = credentials('secret_key')
    }
    stages {
        stage('terraform') {
            steps {
                sh '''
                    terraform --version
                    terraform init
                    terraform plan
                    terraform apply -auto-approve"
                '''
            }
        }
    }
}