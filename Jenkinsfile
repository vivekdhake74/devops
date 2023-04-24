pipeline {
    agent any
    }
    parameters {
        string(name: 'aws_region', defaultValue: 'us-east-1', description: 'aws region',)
        string(name: 'aws_ami_id', defaultValue: 'ami-007855ac798b5175e', description: 'aws ami id',)
        string(name: 'aws_instance_type', defaultValue: 't2.micro', description: 'aws_instance_type',)
        string(name: 'aws_key_name', defaultValue: 'infra', description: 'key name',)
        string(name: 'aws_private_ip', defaultValue: '172.31.64.10', description: 'aws private ip',)
        string(name: 'aws_subnet_id', defaultValue: 'subnet-046435b14272655f2', description: 'subnet id',)
        string(name: 'aws_instance_name', defaultValue: 'terraform_ec2', description: 'aws instance name',)
        string(name: 'aws_sg', defaultValue: 'sg-0d52541663896eee9', description: 'aws sg',)
        string(name: 'aws_volume_size', defaultValue: '10', description: 'aws volume size',)
        string(name: 'aws_eip_name', defaultValue: 'terraform_eip', description: 'aws eip name')

         }

    stages {
        stage('Ec2 PROVISION') {
            steps {
                  sh """
                  terraform apply \
                  -var 'region=${aws_region}' \
                  -var 'ami_id=${aws_ami_id}' \
                  -var 'instance_type=${aws_instance_type}' \
                  -var 'key_name=${aws_key_name}' \
                  -var 'private_ip=${aws_private_ip}' \
                  -var 'subnet_id=${aws_subnet_id}' \
                  -var 'instance_name=${aws_instance_name}' \
                  -var 'sg=${aws_sg}' \
                  -var 'volume_size=${aws_volume_size}' \
                  -var 'eip_name=${aws_eip_name}'
                    """
                }
            }
        }
    }
    post {
         always {
             echo 'This will always run'
         }

    }
}
