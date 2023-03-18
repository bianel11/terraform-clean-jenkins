pipeline {
    agent any
    enviroment {
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
                    terraform apply -auto-approve  -var "access_key=${access_key}" -var "secret_key=${secret_key}"
                '''
            }
        }
    }
}