pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Charankumar9170/sample-web-app.git'
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
                scp -i app_kp.pem /var/lib/jenkins/target/web-app.war ec2-user@13.49.175.19:/var/lib/tomcat10/webapps/ 
                ssh -i app_kp.pem ubuntu@13.49.175.19 "sudo systemctl restart tomcat10"
                '''
            }
        }
    }
}

