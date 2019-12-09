
pipeline {
    agent any
   
    stages {
        stage('Compile-Build-Test ') {
            steps {
		sh 'cd /shell'
		sh './maven.sh'
	    }
	}
	    stage('tomcat')
	    {
		    steps{
		    sh './tomcat.sh'
	    
		    }
	    }
    }}
