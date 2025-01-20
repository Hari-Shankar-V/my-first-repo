pipeline {
    // add your slave label name
    agent { label 'Jenkins_slave_01'}
    tools{
        maven 'maven-test'
    }

    stages {
        stage ('Checkout_SCM') {

            steps {
          	    
	     checkout scm
            }
        }

        stage ('Maven_Build') {

            steps {
               sh 'mvn clean package'
            }
        }
        
        stage ('Deploy_Tomcat') {

            steps {
	      sshagent(['first_slave']) {
              sh "scp -o StrictHostKeyChecking=no  target/maven-web-application.war  ec2-user@13.127.198.125:/opt/tomcat9/webapps"
	      }
         }
        }
        
    }
}
