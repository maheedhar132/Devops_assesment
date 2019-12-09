
pipeline {
    agent any
   
    stages {
        stage('Compile-Build-Test ') {
            steps {
	    	sh 'mvn clean install'
		    sh 'cp $WORKSPACE/target/$JOB_BASE_NAME-$BUILD_ID'
           	    }
		
	
      }
    }}
