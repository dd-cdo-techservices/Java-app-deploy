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
		sh 'sudo rm /tmp/LoginWeb*.war'
		      sh 'bash copywar.sh' 
		      
	      }
      
	      
	echo 'Deploying Wordpress Application on AWS Node'
        sh 'ansible-playbook -i targethost.ini java_app.yml'
        cleanWs()
      }
    }
  }
}
