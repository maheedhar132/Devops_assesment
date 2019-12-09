
pipeline {
    agent any
   
    stages {
        stage('Compile-Build-Test ') {
            steps {
	    	sh 'mvn clean install'
		    sh 'echo "$WORKSPACE/target/$BUILD_TAG-$BUILD_ID"'
		    sh 'echo "$BUILD_URL"'

           	    }
		
	
      }
    }}
