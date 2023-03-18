pipeline {
    agent any
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