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
                    scp -i /var/lib/jenkins/app_kp.pem /var/lib/jenkins/workspace/web_app/target/web-app.war \ubuntu@13.49.175.19:/var/lib/tomcat10/webapps/
        '''
    }
}
    }
}

