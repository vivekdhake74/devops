pipeline{
    agent any
    stages{
        stage('terraform') {
          steps {
            sh 'yum update -y'
            sh 'yum install -y yum-utils'
            sh 'yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo'
            sh 'yum -y install terraform'
          }
       }
        stage("TF Init"){
            steps{
                sh 'terraform init'
                echo "Executing Terraform Init"
            }
        }
        stage("TF Validate"){
            steps{
                echo "Validating Terraform Code"
            }
        }
        stage("TF Plan"){
            steps{
                sh 'terraform plan'
                echo "Executing Terraform Plan"
            }
        }
        stage("TF Apply"){
            steps{
                sh 'terraform apply -auto-approve'
                echo "Executing Terraform Apply"
            }
        }
        stage("Invoke Lambda"){
            steps{
                echo "Invoking your AWS Lambda"
            }
        }
    }
}
