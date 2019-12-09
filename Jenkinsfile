
pipeline {
    agent any
   
    stages {
        stage('Compile-Build-Test ') {
            steps {
	    	sh 'mvn clean install'
		    sh 'sudo cp $WORKSPACE/target/*.war /home/ec2-user/apache/apache-tomcat-8.5.49/webapps'
		

           	    }
		
	
      }
    }}
