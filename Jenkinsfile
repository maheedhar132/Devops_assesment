
pipeline {
    agent any
   
    stages {
        stage('Compile-Build-Test ') {
            steps {
	    	sh 'mvn clean install'
		    sh 'echo "$JENKINS_HOME/$JOB_NAME"'
           	    }
		
	
      }
    }}
