pipeline {
    agent any
    tools {
        terraform 'terraform-11'
    }
    stages{
        stage("Git Checkout"){
            steps{
                git 'https://github.com/galegson/terraform-iac-jenkins.git'
            }
        }
        stage("Terraform Init"){
            steps{
                sh 'terraform init'
            }
        }
        stage("Terraform Apply"){
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
