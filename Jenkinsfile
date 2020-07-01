pipeline {

    agent any

    stages {

        stage('Build') {
            steps {
		     sh '''
	        	./jenkins/build/mvn.sh mvn -B -DskipTests clean package
			./jenkins/build/build.sh
                   ''' 
            }
			post {
                success {
                    archiveArtifacts artifacts: 'service-config-server/target/*.jar', fingerprint: true
                }
            }
        }                        
        stage('Test') {
            steps {
                sh './jenkins/test/test.sh mvn test'           
            }
			post {
                always {
                    junit 'service-config-server/target/surefire-reports/*.xml'
                }
			}
		}
        stage('Push') {
            steps {
                sh './jenkins/push/push.sh'           
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'           
            }
        }
    }
}
