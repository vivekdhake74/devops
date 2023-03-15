pipeline{
    agent any
    stages{
        stage('terraform') {
          steps {
            sh 'yum install terraform -y'
          }
       }
        stage("TF Init"){
            steps{
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
                echo "Executing Terraform Plan"
            }
        }
        stage("TF Apply"){
            steps{
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
