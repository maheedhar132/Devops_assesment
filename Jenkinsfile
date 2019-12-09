
pipeline {
    agent any
   
    stages {
        stage('Compile-Build-Test ') {
            steps {
		
		sh 'shell./maven.sh'
	    }
	}
	    stage('tomcat')
	    {
		    steps{
		    sh 'shell./tomcat.sh'
	    
		    }
	    }
    }}
