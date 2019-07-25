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
		
		      sh 'bash copywar.sh' 
		      
	      }
      
	      
	echo 'Deploying Wordpress Application on AWS Node'
        sh 'ansible-playbook -i targethost.ini java_app.yml'
      
      }
    }
	
	 stage('Results') {
      steps {
        hygieiaDeployPublishStep applicationName: 'Java', artifactDirectory: '/JavaAppCI-Mavin/target/', artifactGroup: 'com.test', artifactName: '*.jar', artifactVersion: '2.2.2-SNAPSHOT', buildStatus: 'Success', environmentName: 'Dev'
	      cleanWs()
      }
    }
	
  }
}
