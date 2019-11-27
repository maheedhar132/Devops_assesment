@Library('library')_
pipeline {
    agent any
    tools {
        maven "Maven"   
    }   
  
    stages {
        stage('Compile-Build-Test ') {
            steps {
	    	slacknotification 'Build Success'
                build 'BUILD'
           	    }
		post
		{
		 failure { jira()
		}
            }	
	
      }
    }}
