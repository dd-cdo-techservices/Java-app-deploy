pipeline {
  
  agent any  
  
  stages {
    stage('checkout') {
      steps {
        checkout scm
  	    }
    	}
    
    
    stage('Deploy App') {
      steps {
	      script{
		def key = sh(script: "aws s3 ls s3://dd-cdo-poc/uc1-loginwebapp/target --recursive | sort | tail -n 1 | awk '{print \$4}'", returnStdout: true)
		     sh 'aws s3 cp s3://dd-cdo-poc/$key /tmp/LoginWebApps.war' 
		      
		      	     
	      }
      
	      
	echo 'Deploying Wordpress Application on AWS Node'
        sh 'ansible-playbook -i targethost.ini java_app.yml'
        cleanWs()
      }
    }
  }
}
