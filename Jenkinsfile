pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git 'https://github.com/Charankumar9170/sample-web-app'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                scp -i app_kp.pem /var/lib/jenkins/workspace/web-app/target/web-app-1.0.war ec2-user@13.49.175.19:/var/lib/tomcat10/webapps/ 
                ssh -i app_kp.pem ubuntu@13.49.175.19 "sudo systemctl restart tomcat"
                '''
            }
        }
    }
}

