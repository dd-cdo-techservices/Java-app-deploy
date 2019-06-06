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
	echo 'Copying war file from S3 to tmp'
	sh 'sudo ./copywar.sh'
	echo 'Deploying Wordpress Application on AWS Node'
        sh 'ansible-playbook -i targethost.ini java_app.yml copywar.sh'
        cleanWs()
      }
    }
  }
}
