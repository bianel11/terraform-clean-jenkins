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
                    terraform apply -auto-approve -var "access_key=AKIAXFKDDCMACIRIYZG2" -var "secret_key=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"
                '''
            }
        }
    }
}