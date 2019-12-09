
pipeline {
    agent any
   
    stages {
        stage('Compile-Build-Test ') {
            steps {
	    	sh 'chmod 755 +x *.sh'
		sh '/shell/./maven.sh'
	    }
	}
	    stage('tomcat')
	    {
		    steps{
		    sh '/shell/./tomcat.sh'
	    
		    }
	    }
    }}
